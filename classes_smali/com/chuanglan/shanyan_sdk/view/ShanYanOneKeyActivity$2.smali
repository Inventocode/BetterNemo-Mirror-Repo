.class Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$2;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$2;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->finish()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v0

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$2;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->g(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 p1, 0x3f3

    const-string/jumbo v1, "点击返回，用户取消免密登录"

    invoke-static {p1, v1, v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$2;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->k(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)J

    move-result-wide v9

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$2;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->l(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)J

    move-result-wide v11

    const/16 v1, 0x3f3

    const/4 v4, 0x3

    const-string v5, "1011"

    const-string/jumbo v6, "点击返回"

    invoke-virtual/range {v0 .. v12}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    return-void
.end method
