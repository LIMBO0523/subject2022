package com.project.bean;

import java.util.ArrayList;
import java.util.List;

public class CurriculumExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CurriculumExample() {
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

        public Criteria andTNumberIsNull() {
            addCriterion("t_number is null");
            return (Criteria) this;
        }

        public Criteria andTNumberIsNotNull() {
            addCriterion("t_number is not null");
            return (Criteria) this;
        }

        public Criteria andTNumberEqualTo(Integer value) {
            addCriterion("t_number =", value, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberNotEqualTo(Integer value) {
            addCriterion("t_number <>", value, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberGreaterThan(Integer value) {
            addCriterion("t_number >", value, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("t_number >=", value, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberLessThan(Integer value) {
            addCriterion("t_number <", value, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberLessThanOrEqualTo(Integer value) {
            addCriterion("t_number <=", value, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberIn(List<Integer> values) {
            addCriterion("t_number in", values, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberNotIn(List<Integer> values) {
            addCriterion("t_number not in", values, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberBetween(Integer value1, Integer value2) {
            addCriterion("t_number between", value1, value2, "tNumber");
            return (Criteria) this;
        }

        public Criteria andTNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("t_number not between", value1, value2, "tNumber");
            return (Criteria) this;
        }

        public Criteria andMondayIsNull() {
            addCriterion("monday is null");
            return (Criteria) this;
        }

        public Criteria andMondayIsNotNull() {
            addCriterion("monday is not null");
            return (Criteria) this;
        }

        public Criteria andMondayEqualTo(String value) {
            addCriterion("monday =", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayNotEqualTo(String value) {
            addCriterion("monday <>", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayGreaterThan(String value) {
            addCriterion("monday >", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayGreaterThanOrEqualTo(String value) {
            addCriterion("monday >=", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayLessThan(String value) {
            addCriterion("monday <", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayLessThanOrEqualTo(String value) {
            addCriterion("monday <=", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayLike(String value) {
            addCriterion("monday like", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayNotLike(String value) {
            addCriterion("monday not like", value, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayIn(List<String> values) {
            addCriterion("monday in", values, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayNotIn(List<String> values) {
            addCriterion("monday not in", values, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayBetween(String value1, String value2) {
            addCriterion("monday between", value1, value2, "monday");
            return (Criteria) this;
        }

        public Criteria andMondayNotBetween(String value1, String value2) {
            addCriterion("monday not between", value1, value2, "monday");
            return (Criteria) this;
        }

        public Criteria andTuesdayIsNull() {
            addCriterion("tuesday is null");
            return (Criteria) this;
        }

        public Criteria andTuesdayIsNotNull() {
            addCriterion("tuesday is not null");
            return (Criteria) this;
        }

        public Criteria andTuesdayEqualTo(String value) {
            addCriterion("tuesday =", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayNotEqualTo(String value) {
            addCriterion("tuesday <>", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayGreaterThan(String value) {
            addCriterion("tuesday >", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayGreaterThanOrEqualTo(String value) {
            addCriterion("tuesday >=", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayLessThan(String value) {
            addCriterion("tuesday <", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayLessThanOrEqualTo(String value) {
            addCriterion("tuesday <=", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayLike(String value) {
            addCriterion("tuesday like", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayNotLike(String value) {
            addCriterion("tuesday not like", value, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayIn(List<String> values) {
            addCriterion("tuesday in", values, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayNotIn(List<String> values) {
            addCriterion("tuesday not in", values, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayBetween(String value1, String value2) {
            addCriterion("tuesday between", value1, value2, "tuesday");
            return (Criteria) this;
        }

        public Criteria andTuesdayNotBetween(String value1, String value2) {
            addCriterion("tuesday not between", value1, value2, "tuesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayIsNull() {
            addCriterion("wednesday is null");
            return (Criteria) this;
        }

        public Criteria andWednesdayIsNotNull() {
            addCriterion("wednesday is not null");
            return (Criteria) this;
        }

        public Criteria andWednesdayEqualTo(String value) {
            addCriterion("wednesday =", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayNotEqualTo(String value) {
            addCriterion("wednesday <>", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayGreaterThan(String value) {
            addCriterion("wednesday >", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayGreaterThanOrEqualTo(String value) {
            addCriterion("wednesday >=", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayLessThan(String value) {
            addCriterion("wednesday <", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayLessThanOrEqualTo(String value) {
            addCriterion("wednesday <=", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayLike(String value) {
            addCriterion("wednesday like", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayNotLike(String value) {
            addCriterion("wednesday not like", value, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayIn(List<String> values) {
            addCriterion("wednesday in", values, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayNotIn(List<String> values) {
            addCriterion("wednesday not in", values, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayBetween(String value1, String value2) {
            addCriterion("wednesday between", value1, value2, "wednesday");
            return (Criteria) this;
        }

        public Criteria andWednesdayNotBetween(String value1, String value2) {
            addCriterion("wednesday not between", value1, value2, "wednesday");
            return (Criteria) this;
        }

        public Criteria andThursdayIsNull() {
            addCriterion("thursday is null");
            return (Criteria) this;
        }

        public Criteria andThursdayIsNotNull() {
            addCriterion("thursday is not null");
            return (Criteria) this;
        }

        public Criteria andThursdayEqualTo(String value) {
            addCriterion("thursday =", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayNotEqualTo(String value) {
            addCriterion("thursday <>", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayGreaterThan(String value) {
            addCriterion("thursday >", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayGreaterThanOrEqualTo(String value) {
            addCriterion("thursday >=", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayLessThan(String value) {
            addCriterion("thursday <", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayLessThanOrEqualTo(String value) {
            addCriterion("thursday <=", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayLike(String value) {
            addCriterion("thursday like", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayNotLike(String value) {
            addCriterion("thursday not like", value, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayIn(List<String> values) {
            addCriterion("thursday in", values, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayNotIn(List<String> values) {
            addCriterion("thursday not in", values, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayBetween(String value1, String value2) {
            addCriterion("thursday between", value1, value2, "thursday");
            return (Criteria) this;
        }

        public Criteria andThursdayNotBetween(String value1, String value2) {
            addCriterion("thursday not between", value1, value2, "thursday");
            return (Criteria) this;
        }

        public Criteria andFridayIsNull() {
            addCriterion("friday is null");
            return (Criteria) this;
        }

        public Criteria andFridayIsNotNull() {
            addCriterion("friday is not null");
            return (Criteria) this;
        }

        public Criteria andFridayEqualTo(String value) {
            addCriterion("friday =", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayNotEqualTo(String value) {
            addCriterion("friday <>", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayGreaterThan(String value) {
            addCriterion("friday >", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayGreaterThanOrEqualTo(String value) {
            addCriterion("friday >=", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayLessThan(String value) {
            addCriterion("friday <", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayLessThanOrEqualTo(String value) {
            addCriterion("friday <=", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayLike(String value) {
            addCriterion("friday like", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayNotLike(String value) {
            addCriterion("friday not like", value, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayIn(List<String> values) {
            addCriterion("friday in", values, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayNotIn(List<String> values) {
            addCriterion("friday not in", values, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayBetween(String value1, String value2) {
            addCriterion("friday between", value1, value2, "friday");
            return (Criteria) this;
        }

        public Criteria andFridayNotBetween(String value1, String value2) {
            addCriterion("friday not between", value1, value2, "friday");
            return (Criteria) this;
        }

        public Criteria andSaturdayIsNull() {
            addCriterion("saturday is null");
            return (Criteria) this;
        }

        public Criteria andSaturdayIsNotNull() {
            addCriterion("saturday is not null");
            return (Criteria) this;
        }

        public Criteria andSaturdayEqualTo(String value) {
            addCriterion("saturday =", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayNotEqualTo(String value) {
            addCriterion("saturday <>", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayGreaterThan(String value) {
            addCriterion("saturday >", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayGreaterThanOrEqualTo(String value) {
            addCriterion("saturday >=", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayLessThan(String value) {
            addCriterion("saturday <", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayLessThanOrEqualTo(String value) {
            addCriterion("saturday <=", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayLike(String value) {
            addCriterion("saturday like", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayNotLike(String value) {
            addCriterion("saturday not like", value, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayIn(List<String> values) {
            addCriterion("saturday in", values, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayNotIn(List<String> values) {
            addCriterion("saturday not in", values, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayBetween(String value1, String value2) {
            addCriterion("saturday between", value1, value2, "saturday");
            return (Criteria) this;
        }

        public Criteria andSaturdayNotBetween(String value1, String value2) {
            addCriterion("saturday not between", value1, value2, "saturday");
            return (Criteria) this;
        }

        public Criteria andSundayIsNull() {
            addCriterion("sunday is null");
            return (Criteria) this;
        }

        public Criteria andSundayIsNotNull() {
            addCriterion("sunday is not null");
            return (Criteria) this;
        }

        public Criteria andSundayEqualTo(String value) {
            addCriterion("sunday =", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayNotEqualTo(String value) {
            addCriterion("sunday <>", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayGreaterThan(String value) {
            addCriterion("sunday >", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayGreaterThanOrEqualTo(String value) {
            addCriterion("sunday >=", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayLessThan(String value) {
            addCriterion("sunday <", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayLessThanOrEqualTo(String value) {
            addCriterion("sunday <=", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayLike(String value) {
            addCriterion("sunday like", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayNotLike(String value) {
            addCriterion("sunday not like", value, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayIn(List<String> values) {
            addCriterion("sunday in", values, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayNotIn(List<String> values) {
            addCriterion("sunday not in", values, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayBetween(String value1, String value2) {
            addCriterion("sunday between", value1, value2, "sunday");
            return (Criteria) this;
        }

        public Criteria andSundayNotBetween(String value1, String value2) {
            addCriterion("sunday not between", value1, value2, "sunday");
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