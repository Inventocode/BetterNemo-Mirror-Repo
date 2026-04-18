.class public final Lcom/codemao/toolssdk/model/http/WebOriginResponse;
.super Ljava/lang/Object;
.source "WebOriginResponse.kt"


# instance fields
.field private final intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intl-roki"
    .end annotation
.end field

.field private final intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intl-tools-entry"
    .end annotation
.end field

.field private final roki:Lcom/codemao/toolssdk/model/http/Roki;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "roki"
    .end annotation
.end field

.field private final toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tools-entry"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/model/http/IntlRoki;Lcom/codemao/toolssdk/model/http/IntlToolsEntry;Lcom/codemao/toolssdk/model/http/Roki;Lcom/codemao/toolssdk/model/http/ToolsEntry;)V
    .registers 6

    const-string v0, "intlRoki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intlToolsEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roki"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolsEntry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    .line 9
    iput-object p2, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    .line 11
    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    .line 13
    iput-object p4, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/WebOriginResponse;Lcom/codemao/toolssdk/model/http/IntlRoki;Lcom/codemao/toolssdk/model/http/IntlToolsEntry;Lcom/codemao/toolssdk/model/http/Roki;Lcom/codemao/toolssdk/model/http/ToolsEntry;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/WebOriginResponse;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->copy(Lcom/codemao/toolssdk/model/http/IntlRoki;Lcom/codemao/toolssdk/model/http/IntlToolsEntry;Lcom/codemao/toolssdk/model/http/Roki;Lcom/codemao/toolssdk/model/http/ToolsEntry;)Lcom/codemao/toolssdk/model/http/WebOriginResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/toolssdk/model/http/IntlRoki;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    return-object v0
.end method

.method public final component2()Lcom/codemao/toolssdk/model/http/IntlToolsEntry;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    return-object v0
.end method

.method public final component3()Lcom/codemao/toolssdk/model/http/Roki;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    return-object v0
.end method

.method public final component4()Lcom/codemao/toolssdk/model/http/ToolsEntry;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    return-object v0
.end method

.method public final copy(Lcom/codemao/toolssdk/model/http/IntlRoki;Lcom/codemao/toolssdk/model/http/IntlToolsEntry;Lcom/codemao/toolssdk/model/http/Roki;Lcom/codemao/toolssdk/model/http/ToolsEntry;)Lcom/codemao/toolssdk/model/http/WebOriginResponse;
    .registers 6

    const-string v0, "intlRoki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intlToolsEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roki"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolsEntry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/http/WebOriginResponse;-><init>(Lcom/codemao/toolssdk/model/http/IntlRoki;Lcom/codemao/toolssdk/model/http/IntlToolsEntry;Lcom/codemao/toolssdk/model/http/Roki;Lcom/codemao/toolssdk/model/http/ToolsEntry;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/WebOriginResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/WebOriginResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getIntlRoki()Lcom/codemao/toolssdk/model/http/IntlRoki;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    return-object v0
.end method

.method public final getIntlToolsEntry()Lcom/codemao/toolssdk/model/http/IntlToolsEntry;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    return-object v0
.end method

.method public final getRoki()Lcom/codemao/toolssdk/model/http/Roki;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    return-object v0
.end method

.method public final getToolsEntry()Lcom/codemao/toolssdk/model/http/ToolsEntry;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/IntlRoki;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/IntlToolsEntry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/Roki;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/ToolsEntry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebOriginResponse(intlRoki="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlRoki:Lcom/codemao/toolssdk/model/http/IntlRoki;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intlToolsEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->intlToolsEntry:Lcom/codemao/toolssdk/model/http/IntlToolsEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roki="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->roki:Lcom/codemao/toolssdk/model/http/Roki;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toolsEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/WebOriginResponse;->toolsEntry:Lcom/codemao/toolssdk/model/http/ToolsEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
