.class Lcom/umeng/commonsdk/internal/c$4;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/listener/OnGetOaidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/internal/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/c;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOaid(Ljava/lang/String;)V
    .registers 5

    const-string v0, "MobclickRT"

    const-string v1, "--->>> OAID云控参数更新(不采集->采集)：采集完成"

    .line 300
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p1, "--->>> oaid返回null或者空串，不需要 伪冷启动。"

    .line 302
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_sp_oaid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_umeng_sp_oaid"

    .line 310
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2e

    .line 316
    :catchall_2e
    :cond_2e
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x8014

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    .line 317
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 316
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method
