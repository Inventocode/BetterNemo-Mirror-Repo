.class public final Lcom/codemao/toolssdk/utils/ViewUtilsKt;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# direct methods
.method public static synthetic $r8$lambda$ksfnFCKqRm1lPd2rEajqM9j2i4s(Lkotlin/jvm/internal/Ref$LongRef;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/utils/ViewUtilsKt;->setOnClickListenerWithoutShake$lambda$0(Lkotlin/jvm/internal/Ref$LongRef;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static final setOnClickListenerWithoutShake(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 7
    new-instance v1, Lcom/codemao/toolssdk/utils/ViewUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/codemao/toolssdk/utils/ViewUtilsKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setOnClickListenerWithoutShake$lambda$0(Lkotlin/jvm/internal/Ref$LongRef;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 8

    const-string v0, "$preMills"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 10
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_20
    return-void
.end method
