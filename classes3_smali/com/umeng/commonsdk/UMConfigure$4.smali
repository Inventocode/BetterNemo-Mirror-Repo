.class final Lcom/umeng/commonsdk/UMConfigure$4;
.super Ljava/lang/Object;
.source "UMConfigure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMConfigure;->getOaid(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
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

    .line 1213
    iput-object p1, p0, Lcom/umeng/commonsdk/UMConfigure$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1216
    iget-object v0, p0, Lcom/umeng/commonsdk/UMConfigure$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->access$000()Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1218
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->access$000()Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/umeng/commonsdk/listener/OnGetOaidListener;->onGetOaid(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
