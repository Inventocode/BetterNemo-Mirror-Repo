.class public final Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;
.super Lcom/ljwx/basefragment/BaseBindingFragment;
.source "NewWorkKnFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseBindingFragment<",
        "Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewWorkKnFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewWorkKnFragment.kt\ncom/codemao/nemo/biz/newwork/NewWorkKnFragment\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,165:1\n15#2,7:166\n15#2,7:173\n15#2,7:180\n15#2,7:187\n*S KotlinDebug\n*F\n+ 1 NewWorkKnFragment.kt\ncom/codemao/nemo/biz/newwork/NewWorkKnFragment\n*L\n105#1:166,7\n114#1:173,7\n121#1:180,7\n136#1:187,7\n*E\n"
.end annotation


# static fields
.field private static final jsonData2:Ljava/lang/String;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "                {\n\t\"total_course\": 4,\n\t\"subtitle\": \"\",\n\t\"package_type\": 0,\n\t\"pad_banner_url\": \"https://creation.codemao.cn/neko/course/banner.png\",\n\t\"id\": 19,\n\t\"banner_url\": \"https://creation.codemao.cn/neko/course/pad_banner.png\",\n\t\"sort\": 150,\n\t\"course_page\": [{\n\t\t\t\"id\": 2010,\n\t\t\t\"video_url\": \"https://creation.codemao.cn/neko/course/P0prepare_course.mp4\",\n\t\t\t\"type\": \"少儿编程\",\n\t\t\t\"pad_main_push_preview_url\": \"\",\n\t\t\t\"course_total_steps\": 0,\n\t\t\t\"course_bcm_url\": \"https://creation.codemao.cn/922/user-files/FrLec-8It3ed-3FayyyWYw8rInDN.bcmkn\",\n\t\t\t\"platform\": \"KITTENN\",\n\t\t\t\"title\": \"认识编程猫\",\n\t\t\t\"status\": 1,\n\t\t\t\"main_push_preview_url\": \"\",\n\t\t\t\"course_bcm_version\": \"\",\n\t\t\t\"description\": \"认识操作界面和积木盒子，熟悉基本操作！\",\n\t\t\t\"preview_url\": \"https://creation.codemao.cn/neko/course/P0prepare_preview.png\"\n\t\t},\n\t\t{\n\t\t\t\"id\": 2011,\n\t\t\t\"video_url\": \"https://static.codemao.cn/neko/p1video.mp4\",\n\t\t\t\"type\": \"少儿编程\",\n\t\t\t\"pad_main_push_preview_url\": \"\",\n\t\t\t\"course_total_steps\": 0,\n\t\t\t\"course_bcm_url\": \"https://creation.codemao.cn/922/user-files/FoFINuQ0VLKGAkl-tcUaWaMC9HCL.bcmkn\",\n\t\t\t\"platform\": \"KITTENN\",\n\t\t\t\"title\": \"太空中的大力士\",\n\t\t\t\"status\": 1,\n\t\t\t\"main_push_preview_url\": \"\",\n\t\t\t\"course_bcm_version\": \"\",\n\t\t\t\"description\": \"控制空间站机械臂转运宇航员到达目标点\",\n\t\t\t\"preview_url\": \"https://static.codemao.cn/neko/p1image.png\"\n\t\t},\n\t\t{\n\t\t\t\"id\": 2012,\n\t\t\t\"video_url\": \"https://source-static.codemao.cn/neko/p2video.mp4\",\n\t\t\t\"type\": \"少儿编程\",\n\n\t\t\t\"pad_main_push_preview_url\": \"\",\n\t\t\t\"course_total_steps\": 0,\n\t\t\t\"course_bcm_url\": \"https://creation.codemao.cn/922/user-files/Fr4OTxhSLCCcm0XDdXIJh0ZzX4f6.bcmkn\",\n\t\t\t\"platform\": \"KITTENN\",\n\t\t\t\"title\": \"智能家居\",\n\t\t\t\"status\": 1,\n\t\t\t\"main_push_preview_url\": \"\",\n\t\t\t\"course_bcm_version\": \"\",\n\t\t\t\"description\": \"设计属于你的智能家居\",\n\t\t\t\"preview_url\": \"https://static.codemao.cn/neko/p2image.png\"\n\t\t},\n\t\t{\n\t\t\t\"id\": 2013,\n\t\t\t\"video_url\": \"https://static.codemao.cn/neko/p3video.mp4\",\n\t\t\t\"type\": \"少儿编程\",\n\t\t\t\"pad_main_push_preview_url\": \"\",\n\t\t\t\"course_total_steps\": 0,\n\t\t\t\"course_bcm_url\": \"https://creation.codemao.cn/922/user-files/FrQt7W2XamxErQ7L89Cs6poOUZ5s.bcmkn\",\n\t\t\t\"platform\": \"KITTENN\",\n\t\t\t\"title\": \"向深海前进\",\n\t\t\t\"status\": 1,\n\t\t\t\"main_push_preview_url\": \"\",\n\t\t\t\"course_bcm_version\": \"\",\n\t\t\t\"description\": \"驾驶“奋斗者号”潜入万米深海\",\n\t\t\t\"preview_url\": \"https://static.codemao.cn/neko/p3image.png\"\n\t\t}\n\t],\n\t\"platform\": 1,\n\t\"title\": \"KN公开课\"\n}"

    .line 99
    sput-object v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->jsonData2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0163

    .line 22
    invoke-direct {p0, v0}, Lcom/ljwx/basefragment/BaseBindingFragment;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getJsonData2$cp()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->jsonData2:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final goLogin()Z
    .registers 3

    .line 154
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_10

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;->teachContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.teachContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$1;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;->createTemplate:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.createTemplate"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;->verticalContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.verticalContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$3;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;

    iget-object p1, p1, Lcom/codemao/nemo/databinding/FragmentNewWorkKnBinding;->landscapeContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "mBinding.landscapeContainer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;)V

    .line 20
    new-instance v0, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
