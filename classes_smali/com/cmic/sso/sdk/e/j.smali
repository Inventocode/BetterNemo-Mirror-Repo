.class public Lcom/cmic/sso/sdk/e/j;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/cmic/sso/sdk/e/j;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/e/j;
    .registers 1

    sget-object v0, Lcom/cmic/sso/sdk/e/j;->b:Lcom/cmic/sso/sdk/e/j;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_a0

    goto/16 :goto_80

    :sswitch_d
    const-string v0, "46011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_80

    :cond_17
    const/16 v1, 0x9

    goto/16 :goto_80

    :sswitch_1b
    const-string v0, "46009"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_80

    :cond_25
    const/16 v1, 0x8

    goto/16 :goto_80

    :sswitch_29
    const-string v0, "46007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_80

    :cond_32
    const/4 v1, 0x7

    goto :goto_80

    :sswitch_34
    const-string v0, "46006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_80

    :cond_3d
    const/4 v1, 0x6

    goto :goto_80

    :sswitch_3f
    const-string v0, "46005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_80

    :cond_48
    const/4 v1, 0x5

    goto :goto_80

    :sswitch_4a
    const-string v0, "46004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_80

    :cond_53
    const/4 v1, 0x4

    goto :goto_80

    :sswitch_55
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_80

    :cond_5e
    const/4 v1, 0x3

    goto :goto_80

    :sswitch_60
    const-string v0, "46002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_80

    :cond_69
    const/4 v1, 0x2

    goto :goto_80

    :sswitch_6b
    const-string v0, "46001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto :goto_80

    :cond_74
    const/4 v1, 0x1

    goto :goto_80

    :sswitch_76
    const-string v0, "46000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :goto_80
    const-string p1, "SIMUtils"

    packed-switch v1, :pswitch_data_ca

    const-string p1, "0"

    return-object p1

    :pswitch_88  #0x3, 0x5, 0x9
    const-string v0, "中国电信"

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "3"

    return-object p1

    :pswitch_90  #0x1, 0x6, 0x8
    const-string v0, "中国联通"

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2"

    return-object p1

    :pswitch_98  #0x0, 0x2, 0x4, 0x7
    const-string v0, "中国移动"

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    return-object p1

    :sswitch_data_a0
    .sparse-switch
        0x2f60c6e -> :sswitch_76
        0x2f60c6f -> :sswitch_6b
        0x2f60c70 -> :sswitch_60
        0x2f60c71 -> :sswitch_55
        0x2f60c72 -> :sswitch_4a
        0x2f60c73 -> :sswitch_3f
        0x2f60c74 -> :sswitch_34
        0x2f60c75 -> :sswitch_29
        0x2f60c77 -> :sswitch_1b
        0x2f60c8e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_98  #00000000
        :pswitch_90  #00000001
        :pswitch_98  #00000002
        :pswitch_88  #00000003
        :pswitch_98  #00000004
        :pswitch_88  #00000005
        :pswitch_90  #00000006
        :pswitch_98  #00000007
        :pswitch_90  #00000008
        :pswitch_88  #00000009
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Lcom/cmic/sso/sdk/e/j;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/e/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmic/sso/sdk/e/j;->b:Lcom/cmic/sso/sdk/e/j;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b;->b()Lcom/cmic/sso/sdk/b/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SIMUtils"

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->d()Z

    move-result v3

    if-eqz v3, :cond_63

    const/4 v3, 0x0

    :try_start_47
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_4c

    goto :goto_51

    :catch_4c
    const-string v1, "getOperator失败"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_63

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    if-eqz p1, :cond_82

    const-string p1, "0"

    return-object p1

    :cond_82
    const-string p1, ""

    return-object p1

    :cond_85
    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b;->b()Lcom/cmic/sso/sdk/b/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->e(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b;->b()Lcom/cmic/sso/sdk/b/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b$b;->e()I

    move-result v0

    if-ltz v0, :cond_17

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/b/b;->b()Lcom/cmic/sso/sdk/b/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/b/b$b;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/b/b$b;->e(I)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_1a

    if-nez v1, :cond_19

    return-object v0

    :cond_19
    return-object v1

    :catch_1a
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b;->b()Lcom/cmic/sso/sdk/b/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/b/b$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/j;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysOperType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMUtils"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    const-string v0, "0"

    return-object v0
.end method
