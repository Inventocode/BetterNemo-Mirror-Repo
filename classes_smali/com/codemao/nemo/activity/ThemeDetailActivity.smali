.class public Lcom/codemao/nemo/activity/ThemeDetailActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "ThemeDetailActivity.java"


# instance fields
.field container:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private from:Ljava/lang/String;

.field private isLargePad:Z

.field private subjectId:I

.field private subjectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private workId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/ThemeDetailActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method private bindFragment()V
    .registers 7

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a018b

    .line 101
    iget v2, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    iget-object v3, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->from:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->workId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_25
    return-void
.end method

.method private getSubjectIdList()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/ThemeDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity$1;-><init>(Lcom/codemao/nemo/activity/ThemeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getSubjectIds(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public static goThemeDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/ThemeDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "subjectId"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p5, :cond_13

    const-string p1, "subjectIds"

    .line 66
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_13
    const-string p1, "from"

    .line 68
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    .line 69
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 70
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public changeLastFragment()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 137
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->getSubjectIdList()V

    goto :goto_46

    .line 139
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    iget v1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2e

    if-nez v0, :cond_1d

    goto :goto_2e

    .line 143
    :cond_1d
    iget-object v1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    goto :goto_42

    .line 141
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    :goto_42
    const-string v0, "主题详情"

    .line 145
    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->title:Ljava/lang/String;

    .line 147
    :goto_46
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->bindFragment()V

    return-void
.end method

.method public changeNextFragment()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 152
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->getSubjectIdList()V

    goto :goto_49

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    iget v1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_36

    .line 155
    iget-object v1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_25

    goto :goto_36

    .line 158
    :cond_25
    iget-object v1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    goto :goto_45

    .line 156
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    :goto_45
    const-string v0, "主题详情"

    .line 160
    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->title:Ljava/lang/String;

    .line 162
    :goto_49
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->bindFragment()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 49
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->isLargePad:Z

    const v0, 0x7f0d0061

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "主题详情页"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    .line 174
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subjectId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->from:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->workId:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->title:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subjectIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "主题详情页"

    .line 83
    invoke-virtual {p0, v1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "theme_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0, v1}, Lcom/giu/xzz/BaseActivity;->setViewExtraInfo(Ljava/util/Map;)V

    if-eqz v0, :cond_75

    .line 88
    iget-object v1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_75
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iget-object p1, p0, Lcom/codemao/nemo/activity/ThemeDetailActivity;->subjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_83

    .line 92
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->getSubjectIdList()V

    .line 94
    :cond_83
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->bindFragment()V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
