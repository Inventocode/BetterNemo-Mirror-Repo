.class final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$5;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "{\n                      …                        }"

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    const-string v2, ""

    if-eq p1, v0, :cond_1e

    .line 330
    invoke-static {v2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 329
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_36

    .line 327
    :cond_1e
    invoke-static {v2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 326
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_36

    .line 321
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$5;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-static {p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->access$buildCopyFileObservable(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_36

    :cond_2d
    const-string p1, "cancel"

    .line 324
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 323
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_36
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$5;->invoke(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
