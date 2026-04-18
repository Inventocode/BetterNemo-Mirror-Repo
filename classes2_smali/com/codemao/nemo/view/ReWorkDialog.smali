.class public Lcom/codemao/nemo/view/ReWorkDialog;
.super Landroid/app/Dialog;
.source "ReWorkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;
    }
.end annotation


# instance fields
.field private bcm_version:Ljava/lang/String;

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivRework01:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivRework03:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPgrogress:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private reworkCallback:Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

.field rlGoToWork:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlLaterOpen:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlNetFail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvGoToWork:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNetTry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvOpenLater:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSuccess:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field private workId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 5

    const v0, 0x7f13034a

    .line 92
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 93
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->mContext:Landroid/content/Context;

    .line 94
    iput-wide p2, p0, Lcom/codemao/nemo/view/ReWorkDialog;->workId:J

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/ReWorkDialog;)Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->reworkCallback:Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/ReWorkDialog;)J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->workId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/ReWorkDialog;)Landroid/content/Context;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/ReWorkDialog;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->bcm_version:Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 108
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 109
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 111
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 112
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 114
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/view/ReWorkDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReWorkDialog$1;-><init>(Lcom/codemao/nemo/view/ReWorkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->tvGoToWork:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/ReWorkDialog$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReWorkDialog$2;-><init>(Lcom/codemao/nemo/view/ReWorkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->tvNetTry:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/ReWorkDialog$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReWorkDialog$3;-><init>(Lcom/codemao/nemo/view/ReWorkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->tvOpenLater:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/ReWorkDialog$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReWorkDialog$4;-><init>(Lcom/codemao/nemo/view/ReWorkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->type:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/ReWorkDialog;->showByType(I)Lcom/codemao/nemo/view/ReWorkDialog;

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->type:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 257
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 100
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReWorkDialog;->init()V

    return-void
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setProgress(II)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->tvSuccess:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_34

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->progressBar:Landroid/widget/ProgressBar;

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_34
    return-void
.end method

.method public setReworkCallback(Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->reworkCallback:Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

    return-void
.end method

.method public setType(I)Lcom/codemao/nemo/view/ReWorkDialog;
    .registers 2

    .line 192
    iput p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->type:I

    return-object p0
.end method

.method public showByType(I)Lcom/codemao/nemo/view/ReWorkDialog;
    .registers 6

    .line 210
    iput p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->type:I

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlGoToWork:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->llPgrogress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlNetFail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlLaterOpen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_59

    const/4 v0, 0x2

    const v3, 0x7f0805f1

    if-eq p1, v0, :cond_49

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2e

    goto :goto_9b

    .line 239
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivRework03:Landroid/widget/ImageView;

    invoke-static {v3, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    .line 240
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlLaterOpen:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->llPgrogress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9b

    .line 235
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlNetFail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_9b

    .line 244
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivRework03:Landroid/widget/ImageView;

    invoke-static {v3, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    .line 245
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlLaterOpen:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->llPgrogress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9b

    .line 218
    :cond_59
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const v0, 0x7f0805f0

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/view/ReWorkDialog$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/ReWorkDialog$5;-><init>(Lcom/codemao/nemo/view/ReWorkDialog;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivRework01:Landroid/widget/ImageView;

    .line 230
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 231
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog;->rlGoToWork:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_9b
    return-object p0
.end method
