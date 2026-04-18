.class public Lcom/tencent/open/utils/f;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/tencent/open/utils/f;->a:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/utils/f$1;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/tencent/open/utils/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/open/utils/f;
    .registers 1

    .line 29
    invoke-static {}, Lcom/tencent/open/utils/f$a;->a()Lcom/tencent/open/utils/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "device_info_file"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1a
    const-string v0, "build_model"

    .line 38
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    .line 40
    :cond_22
    iget-object v0, p0, Lcom/tencent/open/utils/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_30
    const-string v0, "build_device"

    .line 41
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/open/utils/f;->a:Ljava/lang/String;

    :cond_38
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "build_model"

    const/4 v1, 0x0

    const-string v2, "device_info_file"

    if-eqz p2, :cond_33

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_33

    .line 77
    :cond_12
    iget-object v3, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    if-eqz v3, :cond_1d

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    return-void

    .line 80
    :cond_1d
    iput-object p2, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    if-eqz p1, :cond_48

    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_48

    :cond_33
    :goto_33
    const-string p2, ""

    .line 71
    iput-object p2, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    if-eqz p1, :cond_48

    .line 73
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_48
    :goto_48
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 52
    iget-object p1, p0, Lcom/tencent/open/utils/f;->a:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 62
    iget-object p1, p0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    return-object p1
.end method
