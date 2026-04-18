.class public final Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;
.super Ljava/lang/Object;
.source "NetworkAgentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFailResult(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;
    .registers 9

    .line 29
    new-instance v6, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    const/16 v1, 0x258

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
