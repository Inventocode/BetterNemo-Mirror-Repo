.class final Lcom/umeng/commonsdk/UMConfigure$1;
.super Ljava/lang/Thread;
.source "UMConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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

    .line 503
    iput-object p1, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 507
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 508
    iget-object v0, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Landroid/content/Context;

    const-string v1, "SDK 初始化失败，请检查是否集成umeng-asms-1.2.X.aar库。"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method
