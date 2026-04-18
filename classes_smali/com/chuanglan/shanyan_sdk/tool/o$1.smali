.class final Lcom/chuanglan/shanyan_sdk/tool/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/o;->a(Lcom/chuanglan/shanyan_sdk/view/a;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/view/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/o$1;->a:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/o$1;->a:Lcom/chuanglan/shanyan_sdk/view/a;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    new-instance v0, Lcom/chuanglan/shanyan_sdk/tool/o$1$1;

    invoke-direct {v0, p0}, Lcom/chuanglan/shanyan_sdk/tool/o$1$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/o$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
