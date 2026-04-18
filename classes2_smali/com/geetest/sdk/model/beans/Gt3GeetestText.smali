.class public Lcom/geetest/sdk/model/beans/Gt3GeetestText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/NoProguard;


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String; = ""

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:Ljava/lang/String; = ""

.field private static l:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnalyzingText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getClosedText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getLoadingText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetErrorText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getNormalText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getOvertimeText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getPassText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getSuccessText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getTryText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getWaitText()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static isTouch()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->l:Z

    return v0
.end method

.method public static setTouch(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->l:Z

    return-void
.end method

.method public static updateLanguage(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static updateLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_48

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const-string v0, "-"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2f

    .line 7
    new-instance v0, Ljava/util/Locale;

    aget-object p1, p1, v2

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_3f

    .line 8
    :cond_2f
    array-length v0, p1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3f

    .line 9
    new-instance v0, Ljava/util/Locale;

    aget-object v2, p1, v2

    aget-object p1, p1, v3

    invoke-direct {v0, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 11
    :cond_3f
    :goto_3f
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_4c

    .line 14
    :cond_48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_4c
    :try_start_4c
    const-string v0, "gt3_geetest_click"

    .line 17
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->a:Ljava/lang/String;

    const-string v0, "gt3_geetest_http_error"

    .line 18
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->b:Ljava/lang/String;

    const-string v0, "gt3_geetest_please_verify"

    .line 19
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->c:Ljava/lang/String;

    const-string v0, "gt3_geetest_success"

    .line 20
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->d:Ljava/lang/String;

    const-string v0, "gt3_geetest_analyzing"

    .line 21
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->e:Ljava/lang/String;

    const-string v0, "gt3_geetest_checking"

    .line 22
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->f:Ljava/lang/String;

    const-string v0, "gt3_geetest_support"

    .line 23
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->g:Ljava/lang/String;

    const-string v0, "gt3_geetest_pass"

    .line 24
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->h:Ljava/lang/String;

    const-string v0, "gt3_geetest_http_timeout"

    .line 25
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->i:Ljava/lang/String;

    const-string v0, "gt3_geetest_try_again"

    .line 26
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->j:Ljava/lang/String;

    const-string v0, "gt3_geetest_closed"

    .line 27
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->k:Ljava/lang/String;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d5
    return-void
.end method
