.class public final Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$onBindData$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SelectAiImageModeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ivContent:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$onBindData$1;->$ivContent:Landroid/widget/ImageView;

    .line 52
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_5
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$onBindData$1;->$ivContent:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 60
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startFromFirstFrame()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 51
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$onBindData$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
