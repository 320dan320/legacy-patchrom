.class public Landroid/util/MonthDisplayHelper;
.super Ljava/lang/Object;
.source "MonthDisplayHelper.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private final mWeekStartDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "year"
    .parameter "month"

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 68
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "weekStartDay"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lt p3, v3, :cond_0

    const/4 v0, 0x7

    if-le p3, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    iput p3, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 54
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 58
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 62
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 63
    return-void
.end method

.method private recalculate()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 200
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 202
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 203
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    .line 204
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 206
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getFirstDayOfMonth()I

    move-result v0

    .line 207
    .local v0, firstDayOfMonth:I
    iget v2, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    sub-int v1, v0, v2

    .line 208
    .local v1, offset:I
    if-gez v1, :cond_0

    .line 209
    add-int/lit8 v1, v1, 0x7

    .line 211
    :cond_0
    iput v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 212
    return-void
.end method


# virtual methods
.method public getColumnOf(I)I
    .locals 2
    .parameter "day"

    .prologue
    .line 157
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getDayAt(II)I
    .locals 3
    .parameter "row"
    .parameter "column"

    .prologue
    .line 136
    if-nez p1, :cond_0

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v1, :cond_0

    .line 137
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    add-int/2addr v1, p2

    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 142
    :goto_0
    return v1

    .line 140
    :cond_0
    mul-int/lit8 v1, p1, 0x7

    add-int/2addr v1, p2

    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 142
    .local v0, day:I
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le v0, v1, :cond_1

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    sub-int v1, v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getDigitsForRow(I)[I
    .locals 5
    .parameter "row"

    .prologue
    const/4 v3, 0x7

    .line 116
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 117
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range (0-5)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_1
    new-array v1, v3, [I

    .line 122
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, column:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 123
    invoke-virtual {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v2

    aput v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    return-object v1
.end method

.method public getFirstDayOfMonth()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfDaysInMonth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    return v0
.end method

.method public getRowOf(I)I
    .locals 2
    .parameter "day"

    .prologue
    .line 150
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getWeekStartDay()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 4
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v3, 0x0

    .line 181
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    const/4 v1, 0x6

    if-le p2, v1, :cond_1

    :cond_0
    move v1, v3

    .line 193
    :goto_0
    return v1

    .line 185
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v1, :cond_2

    move v1, v3

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    mul-int/lit8 v1, p1, 0x7

    add-int/2addr v1, p2

    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 190
    .local v0, day:I
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le v0, v1, :cond_3

    move v1, v3

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public nextMonth()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 173
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 174
    return-void
.end method

.method public previousMonth()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 165
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 166
    return-void
.end method