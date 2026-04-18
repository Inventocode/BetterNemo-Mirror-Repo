.class public final Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;
.super Ljava/lang/Object;
.source "CppWebReturnResultBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFailed$toolssdk_release()I
    .registers 2

    .line 9
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->access$getFailed$cp()I

    move-result v0

    return v0
.end method

.method public final getSuccess$toolssdk_release()I
    .registers 2

    .line 8
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->access$getSuccess$cp()I

    move-result v0

    return v0
.end method
