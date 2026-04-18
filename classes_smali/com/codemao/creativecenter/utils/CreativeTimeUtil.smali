.class public Lcom/codemao/creativecenter/utils/CreativeTimeUtil;
.super Ljava/lang/Object;
.source "CreativeTimeUtil.java"


# static fields
.field public static TIME_MSECOND:I = 0x2

.field public static TIME_SECOND:I = 0x1

.field private static final dateFormater2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final dateFormater4:Ljava/lang/ThreadLocal;
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
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$1;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$1;-><init>()V

    .line 31
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$2;-><init>()V

    .line 43
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$3;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$3;-><init>()V

    .line 50
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$4;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$4;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->dateFormater2:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$5;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$5;-><init>()V

    .line 62
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$6;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$6;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->dateFormater4:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$7;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$7;-><init>()V

    .line 76
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$8;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$8;-><init>()V

    .line 83
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$9;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$9;-><init>()V

    .line 89
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$10;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$10;-><init>()V

    .line 97
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$11;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$11;-><init>()V

    .line 103
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$12;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$12;-><init>()V

    .line 109
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$13;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$13;-><init>()V

    .line 116
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$14;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$14;-><init>()V

    .line 123
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$15;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$15;-><init>()V

    .line 131
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$16;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$16;-><init>()V

    .line 137
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$17;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$17;-><init>()V

    .line 143
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$18;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$18;-><init>()V

    .line 150
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$19;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil$19;-><init>()V

    return-void
.end method

.method public static formatAssistTime(JI)Ljava/lang/String;
    .registers 7

    .line 774
    sget v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 777
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 778
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->isTheSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-lez v2, :cond_63

    .line 779
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 v2, 0x36ee80

    cmp-long p2, v0, v2

    if-gez p2, :cond_4b

    const-wide/32 p0, 0xea60

    .line 781
    div-long/2addr v0, p0

    long-to-int p0, v0

    if-nez p0, :cond_38

    const/4 p0, 0x1

    .line 785
    :cond_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "分钟前"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 787
    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "今天 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->TIME_MSECOND:I

    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->getDateFormater4(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 790
    :cond_63
    sget p2, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->TIME_MSECOND:I

    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->getDateFormater2(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormater2(JI)Ljava/lang/String;
    .registers 5

    .line 594
    sget v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 597
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 598
    sget-object p0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormater4(JI)Ljava/lang/String;
    .registers 5

    .line 631
    sget v0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->TIME_SECOND:I

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 634
    :cond_8
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 635
    sget-object p0, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->dateFormater4:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isTheSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 5

    .line 1010
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1011
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1012
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1013
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 1014
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_30

    const/4 p1, 0x2

    .line 1015
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v2, p1, :cond_30

    const/4 p1, 0x5

    .line 1016
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
