.class Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;
.super Ljava/lang/Object;
.source "CutOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/view/CutOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UndoUnitState"
.end annotation


# instance fields
.field final currentPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;"
        }
    .end annotation
.end field

.field final currentTouchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;",
            "Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;->currentPointList:Ljava/util/List;

    .line 325
    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;->currentTouchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 327
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 328
    iget-object p3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;->currentPointList:Ljava/util/List;

    new-instance v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget p2, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-direct {v0, v1, p2}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2b
    return-void
.end method
