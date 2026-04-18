.class public final Lcom/codemao/nemo/bean/WorkShareCompatData;
.super Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
.source "WorkShareCompatData.kt"


# instance fields
.field private shareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "shareUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkShareCompatData;->shareUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getShareUrl()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkShareCompatData;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setShareUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkShareCompatData;->shareUrl:Ljava/lang/String;

    return-void
.end method
