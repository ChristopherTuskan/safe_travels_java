package com.chris.safetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.chris.safetravels.models.Expense;
import com.chris.safetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
    // adding the book repository as a dependency
    private final ExpenseRepository expenseRepository;
    
    public ExpenseService(ExpenseRepository expenseRepository) {
        this.expenseRepository = expenseRepository;
    }
	
    public List<Expense> allExpenses() {
        return expenseRepository.findAll();
    }
    
    public Expense createExpense(Expense e) {
        return expenseRepository.save(e);
    }
    
    public Expense updateExpense(Expense e) {
    	return expenseRepository.save(e);
    }
    
    public void deleteExpense(Long id) {
    	expenseRepository.deleteById(id);
    }
    
    public Expense findExpense(Long id) {
        Optional<Expense> optionalExpense = expenseRepository.findById(id);
        if(optionalExpense.isPresent()) {
            return optionalExpense.get();
        } else {
            return null;
        }
    }
}
