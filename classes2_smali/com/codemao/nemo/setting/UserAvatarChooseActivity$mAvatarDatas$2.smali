.class final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserAvatarChooseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;

    invoke-direct {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;->INSTANCE:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 496
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0003

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_1.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0004

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_2.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0005

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_3.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0006

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_4.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0007

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_5.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0008

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_6.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e0009

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_7.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f0e000a

    const-string v3, "https://static.codemao.cn/nemo/avatar/avator_8.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const/16 v2, -0x3e7

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
