.class public Lcom/geetest/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/GT3ConfigBean;

.field private c:Lcom/geetest/sdk/c;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_14

    .line 4
    new-instance v0, Lcom/geetest/sdk/c;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    .line 5
    invoke-direct {p0, p1}, Lcom/geetest/sdk/b;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {p1}, Lcom/geetest/sdk/utils/m;->a(Landroid/content/Context;)V

    :cond_14
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "mydata"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "uuid"

    const-string v1, "unknown"

    .line 38
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_28
    return-void
.end method

.method private i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "GeetestUtilsHolder"

    if-eqz v0, :cond_36

    .line 5
    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 9
    iget-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 13
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    return-void

    :cond_15
    const-string v0, "Context must be activity type !"

    .line 14
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    const-string v0, "Context cannot be null !"

    .line 16
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    const-string v0, "Listener cannot be null !"

    .line 18
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    const-string v0, "GT3ConfigBean cannot be null !"

    .line 20
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getPattern()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    return v1

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getPattern()I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->a()V

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/geetest/sdk/a;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->isReleaseLog()Z

    move-result v0

    invoke-static {v0}, Lcom/geetest/sdk/utils/l;->a(Z)V

    const-string v0, "GeetestUtilsHolder"

    const-string v1, "GT3Version-->4.4.1"

    .line 3
    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    .line 5
    invoke-direct {p0}, Lcom/geetest/sdk/b;->i()V

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_36

    .line 8
    iget-object v1, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    goto :goto_46

    .line 10
    :cond_36
    iget-object v1, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 12
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lang-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "null"

    if-eqz v3, :cond_5e

    move-object v3, v4

    goto :goto_62

    :cond_5e
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v3

    :goto_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Default Lang-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "id"

    const-string v5, "in"

    if-eqz v2, :cond_107

    .line 14
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, ""

    const-string v6, "-"

    if-eqz v2, :cond_c5

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a7

    goto :goto_ba

    :cond_a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_ba
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    goto :goto_114

    .line 17
    :cond_c5
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string v1, "zh"

    goto :goto_103

    :cond_d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e9

    goto :goto_fc

    :cond_e9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_fc
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_103
    invoke-virtual {p1, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    goto :goto_114

    .line 20
    :cond_107
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 21
    invoke-virtual {p1, v3}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    .line 24
    :cond_114
    :goto_114
    iget-object v1, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getGetRequestProtocol()Lcom/geetest/sdk/utils/GT3Protocol;

    move-result-object v1

    if-eqz v1, :cond_130

    .line 27
    sget-object v2, Lcom/geetest/sdk/utils/GT3Protocol;->HTTP:Lcom/geetest/sdk/utils/GT3Protocol;

    if-ne v1, v2, :cond_12c

    const-string v1, "http://"

    .line 28
    sput-object v1, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    goto :goto_130

    :cond_12c
    const-string v1, "https://"

    .line 30
    sput-object v1, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    .line 33
    :cond_130
    :goto_130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed Lang-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_145

    goto :goto_149

    :cond_145
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v4

    :goto_149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/c;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 35
    iget-object p1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-direct {p0}, Lcom/geetest/sdk/b;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/c;->a(I)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->c()V

    return-void
.end method

.method public d()Lcom/geetest/sdk/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    return-object v0
.end method

.method public e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "api.geetest.com"

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2
    sget-object v0, Lcom/geetest/sdk/b$a;->a:[I

    iget-object v2, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_47

    const/4 v2, 0x3

    if-eq v0, v2, :cond_31

    .line 21
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    const-string v0, "api.geevisit.com"

    .line 22
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/utils/d;->b:[Ljava/lang/String;

    goto :goto_5c

    .line 23
    :cond_31
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getUseCustomAPIServers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 24
    array-length v1, v0

    if-lez v1, :cond_5c

    .line 25
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/geetest/sdk/utils/d;->b:[Ljava/lang/String;

    goto :goto_5c

    .line 27
    :cond_47
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    const-string v1, "apiv6.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    goto :goto_5c

    .line 28
    :cond_4f
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    const-string v1, "api-na.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    goto :goto_5c

    .line 50
    :cond_57
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    .line 52
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->m()V

    return-void
.end method

.method public f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->i()V

    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->k()V

    return-void
.end method

.method public h()V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/geetest/sdk/b;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    return-void

    .line 4
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geetest/sdk/b;->d:J

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "api.geetest.com"

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 8
    sget-object v0, Lcom/geetest/sdk/b$a;->a:[I

    iget-object v2, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_63

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_45

    .line 27
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    const-string v0, "api.geevisit.com"

    .line 28
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/utils/d;->b:[Ljava/lang/String;

    goto :goto_70

    .line 29
    :cond_45
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getUseCustomAPIServers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 30
    array-length v1, v0

    if-lez v1, :cond_70

    .line 31
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    .line 32
    sput-object v0, Lcom/geetest/sdk/utils/d;->b:[Ljava/lang/String;

    goto :goto_70

    .line 33
    :cond_5b
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    const-string v1, "apiv6.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    goto :goto_70

    .line 34
    :cond_63
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    const-string v1, "api-na.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    goto :goto_70

    .line 56
    :cond_6b
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/c;->a(Ljava/lang/String;)V

    .line 59
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/c;

    invoke-virtual {v0}, Lcom/geetest/sdk/c;->l()V

    return-void
.end method
