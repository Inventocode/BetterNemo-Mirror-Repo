.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserAvatarChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/setting/bean/UserAvatarInfos;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserAvatarChooseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserAvatarChooseActivity.kt\ncom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,793:1\n1851#2,2:794\n*S KotlinDebug\n*F\n+ 1 UserAvatarChooseActivity.kt\ncom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1\n*L\n184#1:794,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $needShowBottom:Z

.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->$needShowBottom:Z

    .line 159
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 204
    :cond_7
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/setting/bean/UserAvatarInfos;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    :cond_1a
    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->getActivity_avatar_frames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_47

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v8, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "活动头像框"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;-><init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->getActivity_avatar_frames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    :cond_47
    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->getLevel_avatar_frame_outbound()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_74

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v8, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "等级头像框"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;-><init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->getLevel_avatar_frame_outbound()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_74
    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->getAchievement_avatar_frames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_a1

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v8, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "成就头像框"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;-><init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->getAchievement_avatar_frames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_a1
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ad
    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    .line 185
    instance-of v3, v2, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz v3, :cond_ad

    .line 186
    check-cast v2, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-virtual {v2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getCurrentUsed()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 187
    invoke-static {v0, v2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$setSelectedAvatarFrameInfo$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;)V

    .line 188
    invoke-virtual {v2, v1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->setSelected(Z)V

    goto :goto_ad

    .line 193
    :cond_cc
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const-string v3, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMAdapter(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->$needShowBottom:Z

    invoke-static {p1, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$showBottomBtn(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 159
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;->onSuccess(Lcom/codemao/nemo/setting/bean/UserAvatarInfos;)V

    return-void
.end method
