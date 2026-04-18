.class public final Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;
.super Ljava/lang/Object;
.source "CallConflictCanRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataFromCalling(Z)Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;
    .registers 2

    if-eqz p1, :cond_7

    .line 7
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;->getDisableData()Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;->getEnableData()Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public final getDisableData()Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;
    .registers 4

    .line 15
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;

    const/4 v1, 0x0

    const-string v2, "voice_call_in"

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public final getEnableData()Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;
    .registers 4

    .line 11
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;

    const/4 v1, 0x1

    const-string v2, "voice_call_end"

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
