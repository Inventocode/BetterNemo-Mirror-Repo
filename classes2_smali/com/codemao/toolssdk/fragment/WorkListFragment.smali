.class public Lcom/codemao/toolssdk/fragment/WorkListFragment;
.super Landroidx/fragment/app/Fragment;
.source "WorkListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;


# instance fields
.field private emptyView:Landroid/view/View;

.field private emptyViewStub:Landroid/view/ViewStub;

.field private worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;


# direct methods
.method public static synthetic $r8$lambda$3ytQJiznyw6r9wtvtH3uySGf07o(Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->showEmptyView$lambda$0(Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XvJufEPsf3EKwhpx_b1Sy1RRYNA(Ljava/util/List;Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->initCheckBox$lambda$2(Ljava/util/List;Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ycCz1qGhV6A11wMD8v0X9gIW1UY(Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->showEmptyView$lambda$1(Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->Companion:Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final checkIsConnect()Z
    .registers 2

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->hideEmptyView()V

    const/4 v0, 0x1

    goto :goto_13

    .line 213
    :cond_f
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->showEmptyView()V

    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private final fullScreen()V
    .registers 3

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1a
    return-void
.end method

.method private final hideBottomUIMenu()V
    .registers 5

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 225
    :goto_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1f

    if-nez v0, :cond_1c

    goto :goto_1f

    :cond_1c
    const/4 v2, 0x1

    .line 226
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 229
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    :cond_29
    if-nez v1, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2f
    return-void
.end method

.method private final hideEmptyView()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    :goto_9
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_15

    if-nez v0, :cond_10

    goto :goto_15

    :cond_10
    const/16 v1, 0x8

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method private final initCheckBox()V
    .registers 14

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    sget v2, Lcom/codemao/toolssdk/R$id;->btn_test:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 134
    :goto_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    sget v3, Lcom/codemao/toolssdk/R$id;->btn_test01:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    goto :goto_21

    :cond_20
    move-object v2, v1

    .line 135
    :goto_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_30

    sget v4, Lcom/codemao/toolssdk/R$id;->btn_test02:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    goto :goto_31

    :cond_30
    move-object v3, v1

    .line 136
    :goto_31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_40

    sget v5, Lcom/codemao/toolssdk/R$id;->btn_test03:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    goto :goto_41

    :cond_40
    move-object v4, v1

    .line 137
    :goto_41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_50

    sget v6, Lcom/codemao/toolssdk/R$id;->btn_test04:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    goto :goto_51

    :cond_50
    move-object v5, v1

    .line 138
    :goto_51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_60

    sget v7, Lcom/codemao/toolssdk/R$id;->btn_test05:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    goto :goto_61

    :cond_60
    move-object v6, v1

    .line 139
    :goto_61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_70

    sget v8, Lcom/codemao/toolssdk/R$id;->btn_test06:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    goto :goto_71

    :cond_70
    move-object v7, v1

    .line 141
    :goto_71
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_8e

    goto :goto_93

    .line 150
    :cond_8e
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_93
    if-nez v2, :cond_96

    goto :goto_9b

    .line 151
    :cond_96
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST01:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_9b
    if-nez v3, :cond_9e

    goto :goto_a3

    .line 152
    :cond_9e
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST02:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_a3
    if-nez v4, :cond_a6

    goto :goto_ab

    .line 153
    :cond_a6
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST03:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_ab
    if-nez v5, :cond_ae

    goto :goto_b3

    .line 154
    :cond_ae
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST04:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_b3
    if-nez v6, :cond_b6

    goto :goto_bb

    .line 155
    :cond_b6
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST05:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_bb
    if-nez v7, :cond_be

    goto :goto_c3

    .line 156
    :cond_be
    sget-object v9, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST06:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 158
    :goto_c3
    sget-object v9, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v9}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v10

    sget-object v11, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v12, 0x0

    if-eq v10, v11, :cond_134

    invoke-virtual {v9}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v10

    sget-object v11, Lcom/codemao/toolssdk/manager/CMTEnvMode;->STAGING:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    if-eq v10, v11, :cond_134

    invoke-virtual {v9}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v9

    sget-object v10, Lcom/codemao/toolssdk/manager/CMTEnvMode;->DEV:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    if-eq v9, v10, :cond_134

    .line 160
    new-instance v1, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8, p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Lcom/codemao/toolssdk/fragment/WorkListFragment;)V

    if-eqz v0, :cond_e8

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_e8
    if-eqz v2, :cond_ed

    .line 173
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_ed
    if-eqz v3, :cond_f2

    .line 174
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_f2
    if-eqz v4, :cond_f7

    .line 175
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_f7
    if-eqz v5, :cond_fc

    .line 176
    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_fc
    if-eqz v6, :cond_101

    .line 177
    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_101
    if-eqz v7, :cond_106

    .line 178
    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    :cond_106
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_165

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    if-eqz v1, :cond_120

    .line 181
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-ne v3, v2, :cond_120

    goto :goto_121

    :cond_120
    const/4 v2, 0x0

    :goto_121
    if-eqz v2, :cond_10a

    .line 182
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.codemao.toolssdk.manager.CMTEnvMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    .line 183
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    goto :goto_165

    .line 188
    :cond_134
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_138
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_153

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-nez v2, :cond_149

    goto :goto_14c

    .line 189
    :cond_149
    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_14c
    if-nez v2, :cond_14f

    goto :goto_138

    .line 190
    :cond_14f
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_138

    .line 192
    :cond_153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15f

    sget v1, Lcom/codemao/toolssdk/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_15f
    if-nez v1, :cond_162

    goto :goto_165

    :cond_162
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_165
    :goto_165
    return-void
.end method

.method private static final initCheckBox$lambda$2(Ljava/util/List;Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/widget/CompoundButton;Z)V
    .registers 6

    const-string v0, "$checkBoxList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_3d

    .line 162
    sget-object p3, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.codemao.toolssdk.manager.CMTEnvMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {p3, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    .line 163
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 164
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p3, :cond_35

    goto :goto_20

    :cond_35
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_20

    .line 168
    :cond_3a
    invoke-direct {p1}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->loadPage()V

    :cond_3d
    return-void
.end method

.method private final loadPage()V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->checkIsConnect()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/WorksListWebView;->loadUrl()V

    :cond_d
    return-void
.end method

.method private final showEmptyView()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-nez v0, :cond_5

    goto :goto_a

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    :goto_a
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_16

    if-nez v0, :cond_11

    goto :goto_55

    :cond_11
    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55

    .line 95
    :cond_16
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->emptyViewStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->emptyView:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    sget v2, Lcom/codemao/toolssdk/R$id;->reload_textV:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_33

    :cond_32
    move-object v0, v1

    .line 97
    :goto_33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_41

    sget v1, Lcom/codemao/toolssdk/R$id;->ivBack:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :cond_41
    if-eqz v1, :cond_4b

    .line 98
    new-instance v2, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/WorkListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4b
    if-eqz v0, :cond_55

    .line 101
    new-instance v1, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/fragment/WorkListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private static final showEmptyView$lambda$0(Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_e
    return-void
.end method

.method private static final showEmptyView$lambda$1(Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->loadPage()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_e

    .line 199
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/WorksListWebView;->updateWorkList()V

    :cond_e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->hideBottomUIMenu()V

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->fullScreen()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_work_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 219
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/WorksListWebView;->destroy()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 204
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 205
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->checkIsConnect()Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    sget p2, Lcom/codemao/toolssdk/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/view/WorksListWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    .line 51
    sget p2, Lcom/codemao/toolssdk/R$id;->empty_viewStub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->emptyViewStub:Landroid/view/ViewStub;

    .line 52
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-nez p1, :cond_21

    goto :goto_29

    :cond_21
    new-instance p2, Lcom/codemao/toolssdk/fragment/WorkListFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment$onViewCreated$1;-><init>(Lcom/codemao/toolssdk/fragment/WorkListFragment;)V

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/view/WorksListWebView;->setEventCallback(Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;)V

    .line 75
    :goto_29
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->initCheckBox()V

    .line 76
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->loadPage()V

    return-void
.end method

.method public openCreateBcmActivity(Landroid/app/Activity;JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17

    const-string v0, "toolType"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;->startActivity(Landroid/app/Activity;JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public refreshPage()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->worksListWebView:Lcom/codemao/toolssdk/view/WorksListWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/WorksListWebView;->loadUrl()V

    :cond_7
    return-void
.end method
