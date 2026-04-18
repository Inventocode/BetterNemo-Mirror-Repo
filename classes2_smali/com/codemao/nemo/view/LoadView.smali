.class public Lcom/codemao/nemo/view/LoadView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "LoadView.java"


# instance fields
.field private closeView:Landroid/view/View;

.field private close_layout_id:I

.field private emptyView:Landroid/view/View;

.field private empty_layout_id:I

.field private errorView:Landroid/view/View;

.field private error_layout_id:I

.field private extraView:Landroid/view/View;

.field private extra_layout_id:I

.field private loadingGif:Lcom/airbnb/lottie/LottieAnimationView;

.field private loadingView:Landroid/view/View;

.field private loading_layout_id:I

.field private views:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/LoadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object p3, Lcom/codemao/nemo/R$styleable;->LoadView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/LoadView;->empty_layout_id:I

    const/4 p3, 0x2

    .line 55
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/LoadView;->error_layout_id:I

    const/4 p3, 0x4

    .line 56
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/LoadView;->loading_layout_id:I

    .line 57
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/LoadView;->close_layout_id:I

    const/4 p3, 0x3

    .line 58
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/LoadView;->extra_layout_id:I

    .line 59
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/LoadView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 65
    iget v0, p0, Lcom/codemao/nemo/view/LoadView;->close_layout_id:I

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 66
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/LoadView;->closeView:Landroid/view/View;

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_12
    iget v0, p0, Lcom/codemao/nemo/view/LoadView;->extra_layout_id:I

    if-eqz v0, :cond_1f

    .line 70
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/LoadView;->extraView:Landroid/view/View;

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_1f
    iget v0, p0, Lcom/codemao/nemo/view/LoadView;->empty_layout_id:I

    if-eqz v0, :cond_2c

    .line 74
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/LoadView;->emptyView:Landroid/view/View;

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_2c
    iget v0, p0, Lcom/codemao/nemo/view/LoadView;->error_layout_id:I

    if-eqz v0, :cond_39

    .line 78
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/LoadView;->errorView:Landroid/view/View;

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_39
    iget v0, p0, Lcom/codemao/nemo/view/LoadView;->loading_layout_id:I

    if-eqz v0, :cond_58

    .line 82
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    const v0, 0x7f0a04f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LoadView;->loadingGif:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_58

    .line 86
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 90
    :cond_58
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/LoadView;->views:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private startLoading()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingGif:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_7
    return-void
.end method

.method private stopLoading()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingGif:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7

    .line 210
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->views:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_13

    .line 96
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/codemao/nemo/view/LoadView;->views:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_13
    return-object v0
.end method

.method public hide()V
    .registers 2

    .line 215
    invoke-direct {p0}, Lcom/codemao/nemo/view/LoadView;->stopLoading()V

    const/16 v0, 0x8

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .registers 7

    .line 228
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_16

    aget v2, p2, v1

    .line 229
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/LoadView;->getView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 230
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/LoadView;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .registers 3

    .line 235
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoadView;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showClose()V
    .registers 3

    .line 123
    invoke-virtual {p0}, Lcom/codemao/nemo/view/LoadView;->show()V

    .line 124
    invoke-direct {p0}, Lcom/codemao/nemo/view/LoadView;->stopLoading()V

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->extraView:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->closeView:Landroid/view/View;

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public showEmpty()V
    .registers 4

    .line 103
    invoke-virtual {p0}, Lcom/codemao/nemo/view/LoadView;->show()V

    .line 104
    invoke-direct {p0}, Lcom/codemao/nemo/view/LoadView;->stopLoading()V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->closeView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_25
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->extraView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public showError()V
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/codemao/nemo/view/LoadView;->show()V

    .line 144
    invoke-direct {p0}, Lcom/codemao/nemo/view/LoadView;->stopLoading()V

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->extraView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->errorView:Landroid/view/View;

    if-eqz v0, :cond_25

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_25
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->closeView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public showExtra()V
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/codemao/nemo/view/LoadView;->show()V

    .line 184
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_c

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-direct {p0}, Lcom/codemao/nemo/view/LoadView;->startLoading()V

    .line 194
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->closeView:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->extraView:Landroid/view/View;

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public showLoading()V
    .registers 4

    .line 163
    invoke-virtual {p0}, Lcom/codemao/nemo/view/LoadView;->show()V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_c

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/codemao/nemo/view/LoadView;->startLoading()V

    .line 174
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->closeView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_25
    iget-object v0, p0, Lcom/codemao/nemo/view/LoadView;->extraView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method
