.class final Lcom/umeng/commonsdk/internal/c$3;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/listener/OnGetOaidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/internal/c;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOaid(Ljava/lang/String;)V
    .registers 6

    const-string v0, "key_umeng_sp_oaid"

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 267
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c$3;->a:Landroid/content/Context;

    const-string v2, "umeng_sp_oaid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_31

    const-string v2, ""

    .line 270
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "MobclickRT"

    const-string v3, "--->>> 更新本地缓存OAID"

    .line 272
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 274
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_31

    :catchall_31
    :cond_31
    return-void
.end method
