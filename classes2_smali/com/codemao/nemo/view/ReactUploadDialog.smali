.class public Lcom/codemao/nemo/view/ReactUploadDialog;
.super Landroid/app/Dialog;
.source "ReactUploadDialog.java"


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field ivLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    const v0, 0x7f130343

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/ReactUploadDialog;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0128

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 89
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 91
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 92
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 93
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/ReactUploadDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ReactUploadDialog$1;-><init>(Lcom/codemao/nemo/view/ReactUploadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->ivLoading:Landroid/widget/ImageView;

    const v1, 0x7f08082b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/codemao/nemo/view/ReactUploadDialog;->init()V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 57
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xb06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public resetProgress()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/view/ReactUploadDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_8
    return-void
.end method
