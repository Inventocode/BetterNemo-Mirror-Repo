.class public final Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;
.super Ljava/lang/Object;
.source "UrlCheckListResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrigin()Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->access$getOrigin$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
    .registers 3

    .line 46
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;->getOrigin()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fromJson(origin, UrlCheckListResponse::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    return-object v0
.end method
