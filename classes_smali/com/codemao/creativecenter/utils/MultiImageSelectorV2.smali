.class public Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
.super Ljava/lang/Object;
.source "MultiImageSelectorV2.java"


# static fields
.field private static sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;


# instance fields
.field private isLandscapeStage:Z

.field private mBgPath:Ljava/lang/String;

.field private mCurWorkUid:Ljava/lang/String;

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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mShowCamera:Z

    const/16 v1, 0x9

    .line 29
    iput v1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mMaxCount:I

    .line 31
    iput v0, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mMode:I

    return-void
.end method

.method public static create()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 1

    .line 55
    sget-object v0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    if-nez v0, :cond_b

    .line 56
    new-instance v0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    .line 58
    :cond_b
    sget-object v0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object v0
.end method

.method private createSketchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget-boolean p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mShowCamera:Z

    const-string v1, "show_camera"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mMaxCount:I

    const-string v1, "max_select_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mPath:Ljava/lang/String;

    const-string v1, "select_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mBgPath:Ljava/lang/String;

    const-string v1, "select_bgpath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mType:I

    const-string v1, "select_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mTitle:Ljava/lang/String;

    const-string v1, "select_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mCurWorkUid:Ljava/lang/String;

    const-string v1, "extra_work_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mOriginData:Ljava/util/ArrayList;

    if-eqz p1, :cond_41

    const-string v1, "default_list"

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 153
    :cond_41
    iget p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mMode:I

    const-string v1, "select_count_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-boolean p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->isLandscapeStage:Z

    const-string v1, "extra_is_landscape_stage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private hasPermission(Landroid/content/Context;)Z
    .registers 5

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_18

    const/16 v2, 0x21

    if-lt v0, v2, :cond_e

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    goto :goto_10

    :cond_e
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 135
    :goto_10
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :cond_18
    :goto_18
    return v1
.end method


# virtual methods
.method public multi()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mMode:I

    .line 104
    sget-object v0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object v0
.end method

.method public setBgPath(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mBgPath:Ljava/lang/String;

    .line 78
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public setLandscapeStage(Z)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->isLandscapeStage:Z

    .line 114
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mPath:Ljava/lang/String;

    .line 73
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mTitle:Ljava/lang/String;

    .line 88
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public setType(I)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 82
    iput p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mType:I

    .line 83
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public setWorkUid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mCurWorkUid:Ljava/lang/String;

    .line 63
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public showCamera(Z)Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mShowCamera:Z

    .line 68
    sget-object p1, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object p1
.end method

.method public single()Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;
    .registers 2

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->mMode:I

    .line 99
    sget-object v0, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->sSelector:Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;

    return-object v0
.end method

.method public startToSketch(Landroid/app/Activity;I)V
    .registers 4

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 120
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/utils/MultiImageSelectorV2;->createSketchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    sget p2, Lcom/codemao/creativecenter/R$anim;->creative_common_in_bottom:I

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_common_exit_top:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1b

    :cond_15
    const-string/jumbo p2, "无权限"

    .line 123
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1b
    return-void
.end method
