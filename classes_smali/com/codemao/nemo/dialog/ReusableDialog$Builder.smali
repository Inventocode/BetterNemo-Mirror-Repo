.class public Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
.super Ljava/lang/Object;
.source "ReusableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/dialog/ReusableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private animResId:I

.field private mCallBack:Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mNo:Ljava/lang/String;

.field private mOK:Ljava/lang/String;

.field private noId:I

.field private okId:I

.field private screenFull:Z

.field private showStatusBar:Z

.field private themeId:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->showStatusBar:Z

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->screenFull:Z

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->themeId:I

    .line 173
    iput v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->animResId:I

    .line 179
    iput v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->top:I

    .line 182
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Landroid/content/Context;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I
    .registers 1

    .line 161
    iget p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->themeId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Z
    .registers 1

    .line 161
    iget-boolean p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->screenFull:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Z
    .registers 1

    .line 161
    iget-boolean p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->showStatusBar:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I
    .registers 1

    .line 161
    iget p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->top:I

    return p0
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I
    .registers 1

    .line 161
    iget p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->animResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Landroid/view/View;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mCallBack:Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I
    .registers 1

    .line 161
    iget p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->okId:I

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mOK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I
    .registers 1

    .line 161
    iget p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->noId:I

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mNo:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/codemao/nemo/dialog/ReusableDialog;
    .registers 3

    .line 241
    new-instance v0, Lcom/codemao/nemo/dialog/ReusableDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;-><init>(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;Lcom/codemao/nemo/dialog/ReusableDialog$1;)V

    return-object v0
.end method

.method public setAnim(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    .registers 2

    .line 201
    iput p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->animResId:I

    return-object p0
.end method

.method public setContentView(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object p0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setContentView(Landroid/view/View;)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentView(Landroid/view/View;)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public setScreenFull(Z)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->screenFull:Z

    return-object p0
.end method

.method public setTheme(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    .registers 2

    .line 191
    iput p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->themeId:I

    return-object p0
.end method

.method public setTop(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    .registers 2

    .line 236
    iput p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->top:I

    return-object p0
.end method
