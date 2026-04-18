.class public final Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "PublishForbidTipsPop.kt"


# instance fields
.field private final publish:Landroid/view/View$OnClickListener;

.field private final save:Landroid/view/View$OnClickListener;

.field private final tips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "save"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publish"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;->tips:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;->save:Landroid/view/View$OnClickListener;

    .line 13
    iput-object p4, p0, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;->publish:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d0137

    return v0
.end method

.method protected onCreate()V
    .registers 3

    .line 21
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a018c

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a05d5

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;->publish:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06bc

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;->save:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
