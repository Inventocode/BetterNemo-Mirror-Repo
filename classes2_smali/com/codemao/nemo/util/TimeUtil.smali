.class public Lcom/codemao/nemo/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field public static TIME_MSECOND:I = 0x2

.field public static TIME_SECOND:I = 0x1

.field private static final dateFormater:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormater13:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormater2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormater3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$1;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$1;-><init>()V

    .line 31
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$2;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$2;-><init>()V

    .line 43
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$3;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$3;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater:Ljava/lang/ThreadLocal;

    .line 50
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$4;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$4;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater2:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$5;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$5;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater3:Ljava/lang/ThreadLocal;

    .line 62
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$6;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$6;-><init>()V

    .line 69
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$7;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$7;-><init>()V

    .line 76
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$8;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$8;-><init>()V

    .line 83
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$9;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$9;-><init>()V

    .line 89
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$10;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$10;-><init>()V

    .line 97
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$11;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$11;-><init>()V

    .line 103
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$12;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$12;-><init>()V

    .line 109
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$13;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$13;-><init>()V

    .line 116
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$14;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$14;-><init>()V

    .line 123
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$15;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$15;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater13:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$16;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$16;-><init>()V

    .line 137
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$17;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$17;-><init>()V

    .line 143
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$18;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$18;-><init>()V

    .line 150
    new-instance v0, Lcom/codemao/nemo/util/TimeUtil$19;

    invoke-direct {v0}, Lcom/codemao/nemo/util/TimeUtil$19;-><init>()V

    return-void
.end method

.method public static calcDayDiffWithTime(JJ)F
    .registers 4

    sub-long/2addr p0, p2

    .line 1030
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    long-to-float p0, p0

    const/4 p1, 0x0

    add-float/2addr p0, p1

    const p1, 0x4ca4cb80  # 8.64E7f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getDateFormater1(JI)Ljava/lang/String;
    .registers 5

    .line 612
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 615
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 616
    sget-object p0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormater13(JI)Ljava/lang/String;
    .registers 5

    .line 603
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 606
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 607
    sget-object p0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater13:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormater2(JI)Ljava/lang/String;
    .registers 5

    .line 594
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 597
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 598
    sget-object p0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormater3(JI)Ljava/lang/String;
    .registers 5

    .line 622
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 625
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 626
    sget-object p0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater3:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(J)Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 159
    sget-object p0, Lcom/codemao/nemo/util/TimeUtil;->dateFormater:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReplyTime(JI)Ljava/lang/String;
    .registers 13

    .line 687
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_9

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    goto :goto_a

    :cond_9
    move-wide v0, p0

    .line 690
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 691
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater13(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 693
    :cond_17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 694
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 695
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 696
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 697
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 698
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 699
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_182

    const/4 v1, 0x6

    .line 700
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 701
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v4, v1

    const/4 v1, 0x7

    if-le v4, v1, :cond_50

    .line 703
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater13(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/4 p0, 0x3

    if-lt v4, p0, :cond_65

    .line 705
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "天前"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    const/4 p0, 0x2

    if-ne v4, p0, :cond_6b

    const-string p0, "前天"

    return-object p0

    :cond_6b
    const-string p0, "1小时前"

    const-string p1, "刚刚"

    const/4 p2, 0x5

    const/16 v1, 0xa

    const-string v5, "分钟前"

    const-string v6, "小时前"

    const/16 v7, 0xb

    const/16 v8, 0x3c

    const/16 v9, 0xc

    if-ne v4, v0, :cond_f8

    .line 709
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x18

    if-lt v4, v1, :cond_8e

    const-string p0, "昨天"

    return-object p0

    :cond_8e
    if-le v4, v0, :cond_bd

    .line 713
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_ac

    .line 715
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 717
    :cond_ac
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bd
    if-ne v4, v0, :cond_dc

    .line 720
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v8

    if-lt p1, v8, :cond_cc

    return-object p0

    .line 724
    :cond_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_dc
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ge p0, p2, :cond_e8

    return-object p1

    .line 731
    :cond_e8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 735
    :cond_f8
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v4, v7

    const-string v7, "今天"

    if-le v4, v1, :cond_106

    return-object v7

    :cond_106
    if-ne v4, v1, :cond_118

    .line 739
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_115

    return-object v7

    :cond_115
    const-string p0, "9小时前"

    return-object p0

    :cond_118
    if-le v4, v0, :cond_147

    .line 746
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_136

    .line 748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 750
    :cond_136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_147
    if-ne v4, v0, :cond_166

    .line 753
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v8

    if-lt p1, v8, :cond_156

    return-object p0

    .line 757
    :cond_156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 760
    :cond_166
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ge p0, p2, :cond_172

    return-object p1

    .line 764
    :cond_172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 769
    :cond_182
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater13(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReplyTime1(JI)Ljava/lang/String;
    .registers 13

    .line 774
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_9

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    goto :goto_a

    :cond_9
    move-wide v0, p0

    .line 777
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 778
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater1(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 780
    :cond_17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 781
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 782
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 783
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 784
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 785
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 786
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_182

    const/4 v1, 0x6

    .line 787
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 788
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v4, v1

    const/4 v1, 0x7

    if-le v4, v1, :cond_50

    .line 790
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater1(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/4 p0, 0x3

    if-lt v4, p0, :cond_65

    .line 792
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "天前"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    const/4 p0, 0x2

    if-ne v4, p0, :cond_6b

    const-string p0, "前天"

    return-object p0

    :cond_6b
    const-string p0, "1小时前"

    const-string p1, "刚刚"

    const/4 p2, 0x5

    const/16 v1, 0xa

    const-string v5, "分钟前"

    const-string v6, "小时前"

    const/16 v7, 0xb

    const/16 v8, 0x3c

    const/16 v9, 0xc

    if-ne v4, v0, :cond_f8

    .line 796
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x18

    if-lt v4, v1, :cond_8e

    const-string p0, "昨天"

    return-object p0

    :cond_8e
    if-le v4, v0, :cond_bd

    .line 800
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_ac

    .line 802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 804
    :cond_ac
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bd
    if-ne v4, v0, :cond_dc

    .line 807
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v8

    if-lt p1, v8, :cond_cc

    return-object p0

    .line 811
    :cond_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 814
    :cond_dc
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ge p0, p2, :cond_e8

    return-object p1

    .line 818
    :cond_e8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 822
    :cond_f8
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v4, v7

    const-string v7, "今天"

    if-le v4, v1, :cond_106

    return-object v7

    :cond_106
    if-ne v4, v1, :cond_118

    .line 826
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_115

    return-object v7

    :cond_115
    const-string p0, "9小时前"

    return-object p0

    :cond_118
    if-le v4, v0, :cond_147

    .line 833
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_136

    .line 835
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 837
    :cond_136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_147
    if-ne v4, v0, :cond_166

    .line 840
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v8

    if-lt p1, v8, :cond_156

    return-object p0

    .line 844
    :cond_156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 847
    :cond_166
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ge p0, p2, :cond_172

    return-object p1

    .line 851
    :cond_172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 856
    :cond_182
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater1(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReplyTime3(JI)Ljava/lang/String;
    .registers 13

    .line 861
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_9

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p0

    goto :goto_a

    :cond_9
    move-wide v0, p0

    .line 864
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 865
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater3(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 867
    :cond_17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 868
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 869
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 870
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 871
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 872
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 873
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_182

    const/4 v1, 0x6

    .line 874
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 875
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v4, v1

    const/4 v1, 0x7

    if-le v4, v1, :cond_50

    .line 877
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater3(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/4 p0, 0x3

    if-lt v4, p0, :cond_65

    .line 879
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "天前"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    const/4 p0, 0x2

    if-ne v4, p0, :cond_6b

    const-string p0, "前天"

    return-object p0

    :cond_6b
    const-string p0, "1小时前"

    const-string p1, "刚刚"

    const/4 p2, 0x5

    const/16 v1, 0xa

    const-string v5, "分钟前"

    const-string v6, "小时前"

    const/16 v7, 0xb

    const/16 v8, 0x3c

    const/16 v9, 0xc

    if-ne v4, v0, :cond_f8

    .line 883
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x18

    if-lt v4, v1, :cond_8e

    const-string p0, "昨天"

    return-object p0

    :cond_8e
    if-le v4, v0, :cond_bd

    .line 887
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_ac

    .line 889
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 891
    :cond_ac
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bd
    if-ne v4, v0, :cond_dc

    .line 894
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v8

    if-lt p1, v8, :cond_cc

    return-object p0

    .line 898
    :cond_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 901
    :cond_dc
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ge p0, p2, :cond_e8

    return-object p1

    .line 905
    :cond_e8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 909
    :cond_f8
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v4, v7

    const-string v7, "今天"

    if-le v4, v1, :cond_106

    return-object v7

    :cond_106
    if-ne v4, v1, :cond_118

    .line 913
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_115

    return-object v7

    :cond_115
    const-string p0, "9小时前"

    return-object p0

    :cond_118
    if-le v4, v0, :cond_147

    .line 920
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, v8

    if-lt p0, v8, :cond_136

    .line 922
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 924
    :cond_136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_147
    if-ne v4, v0, :cond_166

    .line 927
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v8

    if-lt p1, v8, :cond_156

    return-object p0

    .line 931
    :cond_156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 934
    :cond_166
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ge p0, p2, :cond_172

    return-object p1

    .line 938
    :cond_172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 943
    :cond_182
    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater3(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSameDay(JJI)Z
    .registers 7

    .line 972
    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    if-ne p4, v0, :cond_a

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    mul-long p2, p2, v0

    .line 977
    :cond_a
    :try_start_a
    sget-object p4, Lcom/codemao/nemo/util/TimeUtil;->dateFormater:Ljava/lang/ThreadLocal;

    invoke-virtual {p4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 978
    invoke-virtual {p4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 979
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/TimeUtil;->isTheSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_40} :catch_41

    return p0

    :catch_41
    const/4 p0, 0x0

    return p0
.end method

.method public static isTheSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 5

    .line 988
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 989
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 990
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 991
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 992
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_30

    const/4 p1, 0x2

    .line 993
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v2, p1, :cond_30

    const/4 p1, 0x5

    .line 994
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method
