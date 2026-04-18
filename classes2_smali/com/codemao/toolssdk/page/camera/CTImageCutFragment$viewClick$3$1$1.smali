.class final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->viewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 122
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$1$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$viewClick$3$1$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setResult(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    return-void
.end method
