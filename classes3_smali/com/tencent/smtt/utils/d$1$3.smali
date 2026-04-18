.class Lcom/tencent/smtt/utils/d$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/utils/d$1;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/utils/d$1;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/utils/d$1;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/utils/d$1$3;->a:Lcom/tencent/smtt/utils/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/utils/d$1$3;->a:Lcom/tencent/smtt/utils/d$1;

    iget-object v0, v0, Lcom/tencent/smtt/utils/d$1;->b:Landroid/content/Context;

    const-string v1, "下载失败，请检查网络"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
