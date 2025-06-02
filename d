      alert('Please fill all the fields.');
      return;
    }
    addRecord({date, description, amount: parseFloat(amount).toFixed(2)});
    renderRecords();
    dataForm.reset();
  });
  exportBtn.addEventListener('click', exportToExcel);
  importBtn.addEventListener('click', () => importInput.click());
  importInput.addEventListener('change', () => {
    const file = importInput.files[0];
    importFromExcel(file);
    importInput.value = ''; // reset input for next upload
  });
  // Initialization: auto-login if current user exists
  const currentUser = getCurrentUser();
  if (currentUser) {
    showShopSection(currentUser);
  } else {
    showAuthSection();
  }
})();
</script>
</body>
</html>
