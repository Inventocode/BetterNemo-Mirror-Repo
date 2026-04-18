.class public final Lcom/ljwx/recyclerview/SingleClickKt;
.super Ljava/lang/Object;
.source "SingleClick.kt"


# direct methods
.method public static final singleClick(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/ljwx/recyclerview/SingleClickListener;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ljwx/recyclerview/SingleClickListener;-><init>(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic singleClick$default(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    const-wide/16 p1, 0x1f4

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    .line 17
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    :cond_c
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ljwx/recyclerview/SingleClickKt;->singleClick(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
