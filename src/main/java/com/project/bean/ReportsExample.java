package com.project.bean;

import java.util.ArrayList;
import java.util.List;

public class ReportsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReportsExample() {
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

        public Criteria andSubmitTimeIsNull() {
            addCriterion("submit_time is null");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeIsNotNull() {
            addCriterion("submit_time is not null");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeEqualTo(String value) {
            addCriterion("submit_time =", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotEqualTo(String value) {
            addCriterion("submit_time <>", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeGreaterThan(String value) {
            addCriterion("submit_time >", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeGreaterThanOrEqualTo(String value) {
            addCriterion("submit_time >=", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeLessThan(String value) {
            addCriterion("submit_time <", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeLessThanOrEqualTo(String value) {
            addCriterion("submit_time <=", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeLike(String value) {
            addCriterion("submit_time like", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotLike(String value) {
            addCriterion("submit_time not like", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeIn(List<String> values) {
            addCriterion("submit_time in", values, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotIn(List<String> values) {
            addCriterion("submit_time not in", values, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeBetween(String value1, String value2) {
            addCriterion("submit_time between", value1, value2, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotBetween(String value1, String value2) {
            addCriterion("submit_time not between", value1, value2, "submitTime");
            return (Criteria) this;
        }

        public Criteria andThisWeekIsNull() {
            addCriterion("this_week is null");
            return (Criteria) this;
        }

        public Criteria andThisWeekIsNotNull() {
            addCriterion("this_week is not null");
            return (Criteria) this;
        }

        public Criteria andThisWeekEqualTo(String value) {
            addCriterion("this_week =", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekNotEqualTo(String value) {
            addCriterion("this_week <>", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekGreaterThan(String value) {
            addCriterion("this_week >", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekGreaterThanOrEqualTo(String value) {
            addCriterion("this_week >=", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekLessThan(String value) {
            addCriterion("this_week <", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekLessThanOrEqualTo(String value) {
            addCriterion("this_week <=", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekLike(String value) {
            addCriterion("this_week like", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekNotLike(String value) {
            addCriterion("this_week not like", value, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekIn(List<String> values) {
            addCriterion("this_week in", values, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekNotIn(List<String> values) {
            addCriterion("this_week not in", values, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekBetween(String value1, String value2) {
            addCriterion("this_week between", value1, value2, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andThisWeekNotBetween(String value1, String value2) {
            addCriterion("this_week not between", value1, value2, "thisWeek");
            return (Criteria) this;
        }

        public Criteria andStuProblemIsNull() {
            addCriterion("stu_problem is null");
            return (Criteria) this;
        }

        public Criteria andStuProblemIsNotNull() {
            addCriterion("stu_problem is not null");
            return (Criteria) this;
        }

        public Criteria andStuProblemEqualTo(String value) {
            addCriterion("stu_problem =", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemNotEqualTo(String value) {
            addCriterion("stu_problem <>", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemGreaterThan(String value) {
            addCriterion("stu_problem >", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemGreaterThanOrEqualTo(String value) {
            addCriterion("stu_problem >=", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemLessThan(String value) {
            addCriterion("stu_problem <", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemLessThanOrEqualTo(String value) {
            addCriterion("stu_problem <=", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemLike(String value) {
            addCriterion("stu_problem like", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemNotLike(String value) {
            addCriterion("stu_problem not like", value, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemIn(List<String> values) {
            addCriterion("stu_problem in", values, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemNotIn(List<String> values) {
            addCriterion("stu_problem not in", values, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemBetween(String value1, String value2) {
            addCriterion("stu_problem between", value1, value2, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andStuProblemNotBetween(String value1, String value2) {
            addCriterion("stu_problem not between", value1, value2, "stuProblem");
            return (Criteria) this;
        }

        public Criteria andNextWeekIsNull() {
            addCriterion("next_week is null");
            return (Criteria) this;
        }

        public Criteria andNextWeekIsNotNull() {
            addCriterion("next_week is not null");
            return (Criteria) this;
        }

        public Criteria andNextWeekEqualTo(String value) {
            addCriterion("next_week =", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekNotEqualTo(String value) {
            addCriterion("next_week <>", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekGreaterThan(String value) {
            addCriterion("next_week >", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekGreaterThanOrEqualTo(String value) {
            addCriterion("next_week >=", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekLessThan(String value) {
            addCriterion("next_week <", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekLessThanOrEqualTo(String value) {
            addCriterion("next_week <=", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekLike(String value) {
            addCriterion("next_week like", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekNotLike(String value) {
            addCriterion("next_week not like", value, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekIn(List<String> values) {
            addCriterion("next_week in", values, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekNotIn(List<String> values) {
            addCriterion("next_week not in", values, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekBetween(String value1, String value2) {
            addCriterion("next_week between", value1, value2, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andNextWeekNotBetween(String value1, String value2) {
            addCriterion("next_week not between", value1, value2, "nextWeek");
            return (Criteria) this;
        }

        public Criteria andReplyIsNull() {
            addCriterion("reply is null");
            return (Criteria) this;
        }

        public Criteria andReplyIsNotNull() {
            addCriterion("reply is not null");
            return (Criteria) this;
        }

        public Criteria andReplyEqualTo(String value) {
            addCriterion("reply =", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyNotEqualTo(String value) {
            addCriterion("reply <>", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyGreaterThan(String value) {
            addCriterion("reply >", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyGreaterThanOrEqualTo(String value) {
            addCriterion("reply >=", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyLessThan(String value) {
            addCriterion("reply <", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyLessThanOrEqualTo(String value) {
            addCriterion("reply <=", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyLike(String value) {
            addCriterion("reply like", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyNotLike(String value) {
            addCriterion("reply not like", value, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyIn(List<String> values) {
            addCriterion("reply in", values, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyNotIn(List<String> values) {
            addCriterion("reply not in", values, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyBetween(String value1, String value2) {
            addCriterion("reply between", value1, value2, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyNotBetween(String value1, String value2) {
            addCriterion("reply not between", value1, value2, "reply");
            return (Criteria) this;
        }

        public Criteria andReplyTimeIsNull() {
            addCriterion("reply_time is null");
            return (Criteria) this;
        }

        public Criteria andReplyTimeIsNotNull() {
            addCriterion("reply_time is not null");
            return (Criteria) this;
        }

        public Criteria andReplyTimeEqualTo(String value) {
            addCriterion("reply_time =", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeNotEqualTo(String value) {
            addCriterion("reply_time <>", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeGreaterThan(String value) {
            addCriterion("reply_time >", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeGreaterThanOrEqualTo(String value) {
            addCriterion("reply_time >=", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeLessThan(String value) {
            addCriterion("reply_time <", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeLessThanOrEqualTo(String value) {
            addCriterion("reply_time <=", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeLike(String value) {
            addCriterion("reply_time like", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeNotLike(String value) {
            addCriterion("reply_time not like", value, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeIn(List<String> values) {
            addCriterion("reply_time in", values, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeNotIn(List<String> values) {
            addCriterion("reply_time not in", values, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeBetween(String value1, String value2) {
            addCriterion("reply_time between", value1, value2, "replyTime");
            return (Criteria) this;
        }

        public Criteria andReplyTimeNotBetween(String value1, String value2) {
            addCriterion("reply_time not between", value1, value2, "replyTime");
            return (Criteria) this;
        }

        public Criteria andTaskNumberIsNull() {
            addCriterion("task_number is null");
            return (Criteria) this;
        }

        public Criteria andTaskNumberIsNotNull() {
            addCriterion("task_number is not null");
            return (Criteria) this;
        }

        public Criteria andTaskNumberEqualTo(Integer value) {
            addCriterion("task_number =", value, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberNotEqualTo(Integer value) {
            addCriterion("task_number <>", value, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberGreaterThan(Integer value) {
            addCriterion("task_number >", value, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("task_number >=", value, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberLessThan(Integer value) {
            addCriterion("task_number <", value, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberLessThanOrEqualTo(Integer value) {
            addCriterion("task_number <=", value, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberIn(List<Integer> values) {
            addCriterion("task_number in", values, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberNotIn(List<Integer> values) {
            addCriterion("task_number not in", values, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberBetween(Integer value1, Integer value2) {
            addCriterion("task_number between", value1, value2, "taskNumber");
            return (Criteria) this;
        }

        public Criteria andTaskNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("task_number not between", value1, value2, "taskNumber");
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