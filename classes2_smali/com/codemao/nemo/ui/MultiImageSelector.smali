.class public Lcom/codemao/nemo/ui/MultiImageSelector;
.super Ljava/lang/Object;
.source "MultiImageSelector.java"


# instance fields
.field private mBGPath:Ljava/lang/String;

.field private mMaxCount:I

.field private mMode:I

.field private mOriginData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mShowCamera:Z

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mShowCamera:Z

    const/16 v1, 0x9

    .line 29
    iput v1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mMaxCount:I

    .line 31
    iput v0, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mMode:I

    return-void
.end method

.method public static create()Lcom/codemao/nemo/ui/MultiImageSelector;
    .registers 1

    .line 54
    new-instance v0, Lcom/codemao/nemo/ui/MultiImageSelector;

    invoke-direct {v0}, Lcom/codemao/nemo/ui/MultiImageSelector;-><init>()V

    return-object v0
.end method

.method private createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-boolean p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mShowCamera:Z

    const-string v1, "show_camera"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    iget p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mMaxCount:I

    const-string v1, "max_select_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mPath:Ljava/lang/String;

    const-string v1, "select_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mBGPath:Ljava/lang/String;

    const-string v1, "bg_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mType:I

    const-string v1, "select_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mTitle:Ljava/lang/String;

    const-string v1, "select_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mOriginData:Ljava/util/ArrayList;

    if-eqz p1, :cond_3a

    const-string v1, "default_list"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 147
    :cond_3a
    iget p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mMode:I

    const-string v1, "select_count_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private hasPermission(Landroid/content/Context;)Z
    .registers 6

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_21

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-lt v0, v2, :cond_17

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 126
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1

    :cond_17
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 130
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    return v1
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;
    .registers 2

    .line 73
    iput p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mType:I

    return-object p0
.end method

.method public showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mShowCamera:Z

    return-object p0
.end method

.method public single()Lcom/codemao/nemo/ui/MultiImageSelector;
    .registers 2

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/codemao/nemo/ui/MultiImageSelector;->mMode:I

    return-object p0
.end method

.method public start(Landroid/app/Activity;I)V
    .registers 4

    .line 105
    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 106
    invoke-direct {p0, p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const p2, 0x7f01002c

    const v0, 0x7f01002b

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1d

    :cond_17
    const p2, 0x7f1201b8

    .line 109
    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    :goto_1d
    return-void
.end method
