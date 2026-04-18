.class Lcom/umeng/analytics/pro/m$a;
.super Ljava/lang/Object;
.source "BackgroundMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/m;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/m;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->a(Lcom/umeng/analytics/pro/m;)Z

    move-result v0

    const-string v1, "MobclickRT"

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->b(Lcom/umeng/analytics/pro/m;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 45
    iget-object v0, p0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/umeng/analytics/pro/m;->a(Lcom/umeng/analytics/pro/m;Z)Z

    const-string v0, "--->>> went background."

    .line 46
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_1d
    iget-object v0, p0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->c(Lcom/umeng/analytics/pro/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_40

    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    invoke-static {v0}, Lcom/umeng/analytics/pro/m;->c(Lcom/umeng/analytics/pro/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/n;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/n;->n()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_3b
    const-string v0, "--->>> still foreground."

    .line 51
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void
.end method
