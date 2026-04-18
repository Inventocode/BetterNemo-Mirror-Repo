.class final Lcom/chuanglan/shanyan_sdk/utils/y$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/utils/y;->a(Ljava/lang/String;JIJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/lang/String;IJJJ)V
    .registers 9

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->b:I

    iput-wide p3, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->c:J

    iput-wide p5, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->d:J

    iput-wide p7, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->e:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v0

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->a:Ljava/lang/String;

    const/16 v1, 0x3ff

    const-string/jumbo v3, "超时"

    invoke-static {v1, v3, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->b:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->c:J

    sub-long v7, v5, v7

    iget-wide v9, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->d:J

    iget-wide v11, p0, Lcom/chuanglan/shanyan_sdk/utils/y$1;->e:J

    const-string v5, "1023"

    const-string/jumbo v6, "定时器超时"

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    return-void
.end method
