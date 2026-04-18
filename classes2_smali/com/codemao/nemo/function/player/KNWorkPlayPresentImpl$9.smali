.class Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$9;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "KNWorkPlayPresentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->initShareModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;II)V
    .registers 4

    .line 473
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 476
    iget-object p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$9;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$100(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/bean/ShareModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 473
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$9;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
