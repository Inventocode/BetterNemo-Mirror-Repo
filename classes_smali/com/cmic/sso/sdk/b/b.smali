.class public Lcom/cmic/sso/sdk/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/b/b$b;,
        Lcom/cmic/sso/sdk/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/b/b;

.field private static b:J


# instance fields
.field private c:Lcom/cmic/sso/sdk/b/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/SubscriptionInfo;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method private a(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p2, :cond_b

    move-object v0, v1

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public static a()Lcom/cmic/sso/sdk/b/b;
    .registers 1

    sget-object v0, Lcom/cmic/sso/sdk/b/b;->a:Lcom/cmic/sso/sdk/b/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cmic/sso/sdk/b/b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/b;-><init>()V

    sput-object v0, Lcom/cmic/sso/sdk/b/b;->a:Lcom/cmic/sso/sdk/b/b;

    :cond_b
    sget-object v0, Lcom/cmic/sso/sdk/b/b;->a:Lcom/cmic/sso/sdk/b/b;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    invoke-virtual {v0, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Class;

    invoke-virtual {v0, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p4, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " 反射出错"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UMCTelephonyManagement"

    invoke-static {p3, p1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cmic/sso/sdk/b/b$a;

    invoke-direct {p1, p2}, Lcom/cmic/sso/sdk/b/b$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    new-array p3, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p3, v2

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operatorChina = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UMCTelephonyManagement"

    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "中国移动"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p1, "46000"

    return-object p1

    :cond_2a
    const-string v0, "中国联通"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string p1, "46001"

    return-object p1

    :cond_35
    const-string v0, "中国电信"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_40

    const-string p1, "46003"

    return-object p1

    :cond_40
    return-object v1
.end method

.method private a(Ljava/util/List;Landroid/telephony/TelephonyManager;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    goto :goto_19

    :cond_13
    if-le v1, v2, :cond_f1

    invoke-direct {p0, p1, v0}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    :goto_19
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->c(I)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->g(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmic/sso/sdk/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readSim1Info1 iccid1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v1}, Lcom/cmic/sso/sdk/b/b$b;->g(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UMCTelephonyManagement"

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8c

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v0, v2, :cond_8c

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSim1Info1 dataSlotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->d()Z

    move-result v0

    if-nez v0, :cond_93

    return-void

    :cond_93
    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->a()I

    move-result v0

    if-nez v0, :cond_9e

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_a2

    :cond_9e
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :goto_a2
    :try_start_a2
    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v2, "getSubscriberId"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V
    :try_end_b1
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_a2 .. :try_end_b1} :catch_b2

    goto :goto_cc

    :catch_b2
    :try_start_b2
    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v2, "getSubscriberIdGemini"

    invoke-direct {p0, p2, v2, v0}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V
    :try_end_bd
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_b2 .. :try_end_bd} :catch_be

    goto :goto_cc

    :catch_be
    :try_start_be
    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c7} :catch_c8

    goto :goto_cc

    :catch_c8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_cc
    :try_start_cc
    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v2, "getSimOperator"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-direct {p0, p2, v2, p1}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V
    :try_end_db
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_cc .. :try_end_db} :catch_dc

    goto :goto_f1

    :catch_dc
    :try_start_dc
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v1, "getSimOperatorGemini"

    invoke-direct {p0, p2, v1, v0}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V
    :try_end_e7
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_dc .. :try_end_e7} :catch_e8

    goto :goto_f1

    :catch_e8
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x6

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatorFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UMCTelephonyManagement"

    invoke-static {v4, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_b4

    :goto_36
    const/4 v2, -0x1

    goto/16 :goto_a7

    :sswitch_39
    const-string v0, "898611"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_36

    :cond_42
    const/16 v2, 0x9

    goto/16 :goto_a7

    :sswitch_46
    const-string v0, "898609"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_36

    :cond_4f
    const/16 v2, 0x8

    goto :goto_a7

    :sswitch_52
    const-string v0, "898608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_36

    :cond_5b
    const/4 v2, 0x7

    goto :goto_a7

    :sswitch_5d
    const-string v0, "898607"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto :goto_36

    :sswitch_66
    const-string v0, "898606"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_36

    :cond_6f
    const/4 v2, 0x5

    goto :goto_a7

    :sswitch_71
    const-string v0, "898604"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_36

    :cond_7a
    const/4 v2, 0x4

    goto :goto_a7

    :sswitch_7c
    const-string v0, "898603"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    goto :goto_36

    :cond_85
    const/4 v2, 0x3

    goto :goto_a7

    :sswitch_87
    const-string v0, "898602"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    goto :goto_36

    :cond_90
    const/4 v2, 0x2

    goto :goto_a7

    :sswitch_92
    const-string v0, "898601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    goto :goto_36

    :cond_9b
    const/4 v2, 0x1

    goto :goto_a7

    :sswitch_9d
    const-string v2, "898600"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a6

    goto :goto_36

    :cond_a6
    const/4 v2, 0x0

    :cond_a7
    :goto_a7
    packed-switch v2, :pswitch_data_de

    return-object v1

    :pswitch_ab  #0x3, 0x9
    const-string p1, "46003"

    return-object p1

    :pswitch_ae  #0x1, 0x5, 0x8
    const-string p1, "46001"

    return-object p1

    :pswitch_b1  #0x0, 0x2, 0x4, 0x6, 0x7
    const-string p1, "46000"

    return-object p1

    :sswitch_data_b4
    .sparse-switch
        0x62cce3ff -> :sswitch_9d
        0x62cce400 -> :sswitch_92
        0x62cce401 -> :sswitch_87
        0x62cce402 -> :sswitch_7c
        0x62cce403 -> :sswitch_71
        0x62cce405 -> :sswitch_66
        0x62cce406 -> :sswitch_5d
        0x62cce407 -> :sswitch_52
        0x62cce408 -> :sswitch_46
        0x62cce41f -> :sswitch_39
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b1  #00000000
        :pswitch_ae  #00000001
        :pswitch_b1  #00000002
        :pswitch_ab  #00000003
        :pswitch_b1  #00000004
        :pswitch_ae  #00000005
        :pswitch_b1  #00000006
        :pswitch_b1  #00000007
        :pswitch_ae  #00000008
        :pswitch_ab  #00000009
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)V
    .registers 13

    const-string v0, "0"

    const-string v1, "UMCTelephonyManagement"

    const-string v2, "readSimInfoDbStart"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://telephony/siminfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 p1, 0x0

    :try_start_14
    const-string v5, "_id"

    const-string v6, "icc_id"

    const-string v7, "sim_id"

    const-string v8, "mcc"

    const-string v9, "mnc"

    const-string v10, "carrier_name"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "sim_id>=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_25d

    :goto_31
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_25d

    const-string v2, "icc_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "mcc"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mnc"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "carrier_name"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v8}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a6

    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v8}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v8

    if-eq v8, v9, :cond_a6

    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v8}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v8

    if-ne v8, v4, :cond_a6

    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v8, v3}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "通过读取sim db获取数据流量卡的卡槽值："

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v8}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v8

    if-ne v8, v3, :cond_b9

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->e()Z

    move-result v8

    if-nez v8, :cond_b9

    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v8, v4}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;I)I

    :cond_b9
    const/4 v8, 0x1

    if-nez v3, :cond_14d

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10, v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10}, Lcom/cmic/sso/sdk/b/b$b;->c(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v10

    if-ne v10, v9, :cond_ce

    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9, v3}, Lcom/cmic/sso/sdk/b/b$b;->c(Lcom/cmic/sso/sdk/b/b$b;I)I

    :cond_ce
    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_ef

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ef

    invoke-direct {p0, v7}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ef

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10, v9}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_ef
    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10a

    invoke-direct {p0, v2}, Lcom/cmic/sso/sdk/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10a

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10, v9}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_10a
    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1de

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1de

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1de

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_137

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_137
    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1de

    :cond_14d
    if-ne v3, v8, :cond_1de

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10, v2}, Lcom/cmic/sso/sdk/b/b$b;->c(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10}, Lcom/cmic/sso/sdk/b/b$b;->e(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v10

    if-ne v10, v9, :cond_161

    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9, v3}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;I)I

    :cond_161
    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9}, Lcom/cmic/sso/sdk/b/b$b;->f(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_182

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_182

    invoke-direct {p0, v7}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_182

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10, v9}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_182
    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9}, Lcom/cmic/sso/sdk/b/b$b;->f(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_19d

    invoke-direct {p0, v2}, Lcom/cmic/sso/sdk/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_19d

    iget-object v10, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v10, v9}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_19d
    iget-object v9, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v9}, Lcom/cmic/sso/sdk/b/b$b;->f(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1de

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1de

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1de

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_1ca

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1ca
    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_1de
    :goto_1de
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "icc_id-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim_id-->"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subId或者说是_id->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc_string--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc_string--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carrier_name----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "---------------------------------"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25b} :catch_262
    .catchall {:try_start_14 .. :try_end_25b} :catchall_260

    goto/16 :goto_31

    :cond_25d
    if-eqz p1, :cond_26c

    goto :goto_269

    :catchall_260
    move-exception v0

    goto :goto_272

    :catch_262
    :try_start_262
    const-string v0, "readSimInfoDb error"

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_267
    .catchall {:try_start_262 .. :try_end_267} :catchall_260

    if-eqz p1, :cond_26c

    :goto_269
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_26c
    const-string p1, "readSimInfoDbEnd"

    invoke-static {v1, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_272
    if-eqz p1, :cond_277

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_277
    throw v0
.end method

.method private b(Landroid/content/Context;Z)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x16

    if-lt v0, v2, :cond_122

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    if-eqz p1, :cond_127

    const-string v0, "UMCTelephonyManagement"

    if-eqz p2, :cond_6a

    :try_start_15
    const-string p2, "getDefaultDataSubscriptionInfo"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_6a

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;I)I

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-static {v2, p2}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubscriptionInfo适配成功: dataSlotId即sim_id = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubscriptionInfo适配成功: dataSubId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_64} :catch_65

    return-void

    :catch_65
    const-string p2, "readDefaultDataSubId-->getDefaultDataSubscriptionInfo 反射出错"

    invoke-static {v0, p2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    :try_start_6a
    iget-object p2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result p2

    if-ne p2, v1, :cond_a1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_a1

    iget-object p2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {p2, v1}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android 7.0及以上手机getDefaultDataSubscriptionId适配成功: dataSubId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v1}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_9b} :catch_9c

    return-void

    :catch_9c
    const-string p2, "android 7.0及以上手机getDefaultDataSubscriptionId适配失败"

    invoke-static {v0, p2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    const/4 p2, 0x0

    :try_start_a2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefaultDataSubId"

    new-array v3, p2, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_e1

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    new-array v3, p2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android 7.0以下手机getDefaultDataSubId适配成功: dataSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_db} :catch_dc

    return-void

    :catch_dc
    const-string v1, "readDefaultDataSubId-->getDefaultDataSubId 反射出错"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    :try_start_e1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefaultDataSubscriptionId"

    new-array v3, p2, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_127

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "反射getDefaultDataSubscriptionId适配成功: dataSubId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_11b} :catch_11c

    goto :goto_127

    :catch_11c
    const-string p1, "getDefaultDataSubscriptionId-->getDefaultDataSubscriptionId 反射出错"

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_127

    :cond_122
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {p1, v1}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;I)I

    :cond_127
    :goto_127
    return-void
.end method

.method private b(Ljava/util/List;Landroid/telephony/TelephonyManager;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x1

    if-le v0, v1, :cond_d4

    invoke-direct {p0, p1, v1}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->d(I)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->c(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->h(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cmic/sso/sdk/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->d(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSim1Info2 iccid2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/b$b;->h(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UMCTelephonyManagement"

    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_82

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_82

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readSim1Info2 dataSlotId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v3}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->d()Z

    move-result v0

    if-nez v0, :cond_89

    return-void

    :cond_89
    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->a()I

    move-result v0

    if-nez v0, :cond_90

    goto :goto_94

    :cond_90
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    :goto_94
    :try_start_94
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v2, "getSubscriberId"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->b(Ljava/lang/String;)V
    :try_end_a3
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_94 .. :try_end_a3} :catch_a4

    goto :goto_b4

    :catch_a4
    :try_start_a4
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v2, "getSubscriberIdGemini"

    invoke-direct {p0, p2, v2, v1}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->b(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b4
    :try_start_b4
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v2, "getSimOperator"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-direct {p0, p2, v2, p1}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/b/b$b;->d(Ljava/lang/String;)V
    :try_end_c3
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_b4 .. :try_end_c3} :catch_c4

    goto :goto_d4

    :catch_c4
    :try_start_c4
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v0, "getSimOperatorGemini"

    invoke-direct {p0, p2, v0, v1}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cmic/sso/sdk/b/b$b;->d(Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cf} :catch_d0

    goto :goto_d4

    :catch_d0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d4
    :goto_d4
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/b;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21

    invoke-direct {p0, p1, v0}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/util/List;Landroid/telephony/TelephonyManager;)V

    invoke-direct {p0, p1, v0}, Lcom/cmic/sso/sdk/b/b;->b(Ljava/util/List;Landroid/telephony/TelephonyManager;)V

    :cond_21
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "getSimOperatorGemini"

    const-string v1, "getSimOperator"

    const-string v2, "getSubscriberIdGemini"

    const-string v3, "getSubscriberId"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cmic/sso/sdk/b/b$b;->c(I)V

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/cmic/sso/sdk/b/b$b;->d(I)V

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/cmic/sso/sdk/b/b$b;->b(I)V

    :try_start_26
    invoke-direct {p0, p1, v3, v5}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v8, v4}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3, v6}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v4, v3}, Lcom/cmic/sso/sdk/b/b$b;->b(Ljava/lang/String;)V
    :try_end_38
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_26 .. :try_end_38} :catch_39

    goto :goto_5a

    :catch_39
    :try_start_39
    invoke-direct {p0, p1, v2, v5}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v4, v3}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v6}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v3, v2}, Lcom/cmic/sso/sdk/b/b$b;->b(Ljava/lang/String;)V
    :try_end_4b
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_39 .. :try_end_4b} :catch_4c

    goto :goto_5a

    :catch_4c
    :try_start_4c
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v3, v2}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5a
    :try_start_5a
    invoke-direct {p0, p1, v1, v5}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v3, v2}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v6}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/b/b$b;->d(Ljava/lang/String;)V
    :try_end_6c
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_5a .. :try_end_6c} :catch_6d

    goto :goto_89

    :catch_6d
    :try_start_6d
    invoke-direct {p0, p1, v0, v5}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v6}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v1, v0}, Lcom/cmic/sso/sdk/b/b$b;->d(Ljava/lang/String;)V
    :try_end_7f
    .catch Lcom/cmic/sso/sdk/b/b$a; {:try_start_6d .. :try_end_7f} :catch_80

    goto :goto_89

    :catch_80
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V

    :goto_89
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d7

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d7

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/b/b$b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/b/b$b;->c(I)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1, v7}, Lcom/cmic/sso/sdk/b/b$b;->d(I)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/b/b$b;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/b/b$b;->d(Ljava/lang/String;)V

    :goto_cd
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/b/b$b;->b(I)V

    goto :goto_11c

    :cond_d7
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f5

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f5

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1, v7}, Lcom/cmic/sso/sdk/b/b$b;->d(I)V

    goto :goto_cd

    :cond_f5
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11c

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/b/b$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11c

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1, v7}, Lcom/cmic/sso/sdk/b/b$b;->c(I)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1, v7}, Lcom/cmic/sso/sdk/b/b$b;->d(I)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-virtual {p1, v7}, Lcom/cmic/sso/sdk/b/b$b;->b(I)V

    :cond_11c
    :goto_11c
    return-void
.end method

.method private e(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method private f(Landroid/content/Context;)I
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "UMCTelephonyManagement"

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v1}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_a8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->d()Z

    move-result v1

    if-eqz v1, :cond_a3

    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getDataNetworkType"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data dataNetworkType defaultDataSubId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v5}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v4}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data dataNetworkType ---------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_98

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_98

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data dataNetworkType ---->=N "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_98} :catch_99

    :cond_98
    return v1

    :catch_99
    move-exception p1

    const-string v1, "data dataNetworkType ----反射出错-----"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a8

    :cond_a3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    return p1

    :cond_a8
    :goto_a8
    return v2
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/b;->f(Landroid/content/Context;)I

    move-result p1

    packed-switch p1, :pswitch_data_16

    const-string p1, "0"

    return-object p1

    :pswitch_a  #0x14
    const-string p1, "4"

    return-object p1

    :pswitch_d  #0xd, 0x12, 0x13
    const-string p1, "3"

    return-object p1

    :pswitch_10  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    const-string p1, "2"

    return-object p1

    :pswitch_13  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    const-string p1, "1"

    return-object p1

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_13  #00000002
        :pswitch_10  #00000003
        :pswitch_13  #00000004
        :pswitch_10  #00000005
        :pswitch_10  #00000006
        :pswitch_13  #00000007
        :pswitch_10  #00000008
        :pswitch_10  #00000009
        :pswitch_10  #0000000a
        :pswitch_13  #0000000b
        :pswitch_10  #0000000c
        :pswitch_d  #0000000d
        :pswitch_10  #0000000e
        :pswitch_10  #0000000f
        :pswitch_13  #00000010
        :pswitch_10  #00000011
        :pswitch_d  #00000012
        :pswitch_d  #00000013
        :pswitch_a  #00000014
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/cmic/sso/sdk/b/b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    return-void

    :cond_14
    new-instance v0, Lcom/cmic/sso/sdk/b/b$b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/b$b;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/cmic/sso/sdk/b/b;->b(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->e()Z

    move-result v0

    const-string v1, "UMCTelephonyManagement"

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->d()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "华为手机兼容性处理"

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_61

    :cond_4a
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5c

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/b/b$b;->a(Lcom/cmic/sso/sdk/b/b$b;I)I

    :cond_5c
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/b/b$b;->b(Lcom/cmic/sso/sdk/b/b$b;I)I

    :cond_61
    if-eqz p2, :cond_76

    :try_start_63
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p2, v0, :cond_6d

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/b;->c(Landroid/content/Context;)V

    goto :goto_76

    :cond_6d
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/b;->d(Landroid/content/Context;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_70} :catch_71

    goto :goto_76

    :catch_71
    const-string p2, "read sim info error"

    invoke-static {v1, p2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_7f

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/b;->b(Landroid/content/Context;)V

    :cond_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/cmic/sso/sdk/b/b;->b:J

    return-void
.end method

.method public b()Lcom/cmic/sso/sdk/b/b$b;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->c:Lcom/cmic/sso/sdk/b/b$b;

    if-nez v0, :cond_9

    new-instance v0, Lcom/cmic/sso/sdk/b/b$b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/b$b;-><init>()V

    :cond_9
    return-object v0
.end method
