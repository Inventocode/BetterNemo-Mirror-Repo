.class public Lcom/codemao/toolssdk/activity/CreateBcmActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CreateBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

.field private static final WORK_FROM_LOCAL:Ljava/lang/String;

.field private static final WORK_TEST_FULL_URL:Ljava/lang/String;


# instance fields
.field private fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

.field private toolMode:Ljava/lang/String;

.field private toolType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    const-string v0, "workTestFullUrl"

    .line 24
    sput-object v0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->WORK_TEST_FULL_URL:Ljava/lang/String;

    const-string v0, "workFromLocal"

    .line 25
    sput-object v0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->WORK_FROM_LOCAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "KN"

    .line 163
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    const-string v0, "normal"

    .line 164
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getWORK_FROM_LOCAL$cp()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->WORK_FROM_LOCAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getWORK_TEST_FULL_URL$cp()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->WORK_TEST_FULL_URL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    const/4 v0, -0x1

    .line 279
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getCreateBcmCourseFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 13

    const-string v0, "courseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->getCourse(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmFragment(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 15

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->get(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 13

    const-string v0, "workUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->get(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmFragmentFromLocal(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 15

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->getLocal(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmMiaoCodeFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 13

    const-string v0, "miaoCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->getMiaoCode(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmTemplateFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 13

    const-string v0, "templateId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->getTemplate(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method public getCreateBcmTestFullUrlFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
    .registers 13

    const-string v0, "testFullUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;->getTestFullUrl(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 284
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 285
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v7, p0

    .line 169
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    sget v8, Lcom/codemao/toolssdk/R$id;->toolsdk_frameLayout:I

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 175
    invoke-virtual {v7, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "workCourse"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v9, "workTemplateId"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v10, "workNemoMiaoCode"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v11, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->WORK_TEST_FULL_URL:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v12, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->WORK_FROM_LOCAL:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v14, "ToolsData"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_72

    iget-object v12, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    :cond_72
    iput-object v12, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v14, "ToolMode"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_82

    iget-object v12, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    :cond_82
    iput-object v12, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v14, "isLandscape"

    invoke-virtual {v12, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "showPublishButton"

    invoke-virtual {v14, v15, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v0, :cond_b0

    .line 189
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v6, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v9, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v4, v6

    move-object v5, v9

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmFragmentFromLocal(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto/16 :goto_152

    :cond_b0
    cmp-long v0, v4, v2

    if-nez v0, :cond_c9

    if-eqz v1, :cond_c9

    .line 191
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v4, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto/16 :goto_152

    :cond_c9
    if-eqz v6, :cond_d1

    .line 192
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_d2

    :cond_d1
    const/4 v13, 0x1

    :cond_d2
    if-nez v13, :cond_e8

    .line 193
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v4, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmCourseFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto/16 :goto_152

    :cond_e8
    if-eqz v0, :cond_ff

    .line 195
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v6, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v9, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v4, v6

    move-object v5, v9

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmFragment(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto :goto_152

    :cond_ff
    if-eqz v9, :cond_114

    .line 197
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v4, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmTemplateFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto :goto_152

    :cond_114
    if-eqz v10, :cond_129

    .line 199
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v4, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v10

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmMiaoCodeFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto :goto_152

    :cond_129
    if-eqz v11, :cond_13e

    .line 201
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v4, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v11

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmTestFullUrlFragment(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    goto :goto_152

    .line 203
    :cond_13e
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v6, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolType:Ljava/lang/String;

    iget-object v9, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->toolMode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v4, v6

    move-object v5, v9

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->getCreateBcmFragment(JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    move-result-object v0

    iput-object v0, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    .line 205
    :goto_152
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, v7, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->fragment:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v8, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
