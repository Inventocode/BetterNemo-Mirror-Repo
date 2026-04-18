.class Lcom/chuanglan/shanyan_sdk/tool/o$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/o$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/tool/o$2;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/o$2;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/o$2$1;->a:Lcom/chuanglan/shanyan_sdk/tool/o$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/o$2$1;->a:Lcom/chuanglan/shanyan_sdk/tool/o$2;

    iget-object p1, p1, Lcom/chuanglan/shanyan_sdk/tool/o$2;->a:Lcom/chuanglan/shanyan_sdk/view/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    :cond_b
    const/4 p1, 0x1

    return p1
.end method
