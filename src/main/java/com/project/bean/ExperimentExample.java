package com.project.bean;

import java.util.ArrayList;
import java.util.List;

public class ExperimentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ExperimentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andENameIsNull() {
            addCriterion("e_name is null");
            return (Criteria) this;
        }

        public Criteria andENameIsNotNull() {
            addCriterion("e_name is not null");
            return (Criteria) this;
        }

        public Criteria andENameEqualTo(String value) {
            addCriterion("e_name =", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameNotEqualTo(String value) {
            addCriterion("e_name <>", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameGreaterThan(String value) {
            addCriterion("e_name >", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameGreaterThanOrEqualTo(String value) {
            addCriterion("e_name >=", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameLessThan(String value) {
            addCriterion("e_name <", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameLessThanOrEqualTo(String value) {
            addCriterion("e_name <=", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameLike(String value) {
            addCriterion("e_name like", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameNotLike(String value) {
            addCriterion("e_name not like", value, "eName");
            return (Criteria) this;
        }

        public Criteria andENameIn(List<String> values) {
            addCriterion("e_name in", values, "eName");
            return (Criteria) this;
        }

        public Criteria andENameNotIn(List<String> values) {
            addCriterion("e_name not in", values, "eName");
            return (Criteria) this;
        }

        public Criteria andENameBetween(String value1, String value2) {
            addCriterion("e_name between", value1, value2, "eName");
            return (Criteria) this;
        }

        public Criteria andENameNotBetween(String value1, String value2) {
            addCriterion("e_name not between", value1, value2, "eName");
            return (Criteria) this;
        }

        public Criteria andStuNumberIsNull() {
            addCriterion("stu_number is null");
            return (Criteria) this;
        }

        public Criteria andStuNumberIsNotNull() {
            addCriterion("stu_number is not null");
            return (Criteria) this;
        }

        public Criteria andStuNumberEqualTo(Integer value) {
            addCriterion("stu_number =", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotEqualTo(Integer value) {
            addCriterion("stu_number <>", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberGreaterThan(Integer value) {
            addCriterion("stu_number >", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_number >=", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberLessThan(Integer value) {
            addCriterion("stu_number <", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberLessThanOrEqualTo(Integer value) {
            addCriterion("stu_number <=", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberIn(List<Integer> values) {
            addCriterion("stu_number in", values, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotIn(List<Integer> values) {
            addCriterion("stu_number not in", values, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberBetween(Integer value1, Integer value2) {
            addCriterion("stu_number between", value1, value2, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_number not between", value1, value2, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andEResultIsNull() {
            addCriterion("e_result is null");
            return (Criteria) this;
        }

        public Criteria andEResultIsNotNull() {
            addCriterion("e_result is not null");
            return (Criteria) this;
        }

        public Criteria andEResultEqualTo(String value) {
            addCriterion("e_result =", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultNotEqualTo(String value) {
            addCriterion("e_result <>", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultGreaterThan(int value) {
            addCriterion("e_result >", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultGreaterThanOrEqualTo(String value) {
            addCriterion("e_result >=", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultLessThan(String value) {
            addCriterion("e_result <", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultLessThanOrEqualTo(String value) {
            addCriterion("e_result <=", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultLike(String value) {
            addCriterion("e_result like", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultNotLike(String value) {
            addCriterion("e_result not like", value, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultIn(List<String> values) {
            addCriterion("e_result in", values, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultNotIn(List<String> values) {
            addCriterion("e_result not in", values, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultBetween(String value1, String value2) {
            addCriterion("e_result between", value1, value2, "eResult");
            return (Criteria) this;
        }

        public Criteria andEResultNotBetween(String value1, String value2) {
            addCriterion("e_result not between", value1, value2, "eResult");
            return (Criteria) this;
        }

        public Criteria andEStatusIsNull() {
            addCriterion("e_status is null");
            return (Criteria) this;
        }

        public Criteria andEStatusIsNotNull() {
            addCriterion("e_status is not null");
            return (Criteria) this;
        }

        public Criteria andEStatusEqualTo(String value) {
            addCriterion("e_status =", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusNotEqualTo(String value) {
            addCriterion("e_status <>", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusGreaterThan(String value) {
            addCriterion("e_status >", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusGreaterThanOrEqualTo(String value) {
            addCriterion("e_status >=", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusLessThan(String value) {
            addCriterion("e_status <", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusLessThanOrEqualTo(String value) {
            addCriterion("e_status <=", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusLike(String value) {
            addCriterion("e_status like", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusNotLike(String value) {
            addCriterion("e_status not like", value, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusIn(List<String> values) {
            addCriterion("e_status in", values, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusNotIn(List<String> values) {
            addCriterion("e_status not in", values, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusBetween(String value1, String value2) {
            addCriterion("e_status between", value1, value2, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStatusNotBetween(String value1, String value2) {
            addCriterion("e_status not between", value1, value2, "eStatus");
            return (Criteria) this;
        }

        public Criteria andEStepIsNull() {
            addCriterion("e_step is null");
            return (Criteria) this;
        }

        public Criteria andEStepIsNotNull() {
            addCriterion("e_step is not null");
            return (Criteria) this;
        }

        public Criteria andEStepEqualTo(String value) {
            addCriterion("e_step =", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepNotEqualTo(String value) {
            addCriterion("e_step <>", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepGreaterThan(String value) {
            addCriterion("e_step >", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepGreaterThanOrEqualTo(String value) {
            addCriterion("e_step >=", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepLessThan(String value) {
            addCriterion("e_step <", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepLessThanOrEqualTo(String value) {
            addCriterion("e_step <=", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepLike(String value) {
            addCriterion("e_step like", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepNotLike(String value) {
            addCriterion("e_step not like", value, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepIn(List<String> values) {
            addCriterion("e_step in", values, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepNotIn(List<String> values) {
            addCriterion("e_step not in", values, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepBetween(String value1, String value2) {
            addCriterion("e_step between", value1, value2, "eStep");
            return (Criteria) this;
        }

        public Criteria andEStepNotBetween(String value1, String value2) {
            addCriterion("e_step not between", value1, value2, "eStep");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}