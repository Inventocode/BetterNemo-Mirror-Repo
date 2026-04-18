.class Lcom/codemao/nemo/util/GsonUtil$GsonHolder;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/GsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/GsonUtil$GsonHolder;->INSTANCE:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .registers 1

    .line 6
    sget-object v0, Lcom/codemao/nemo/util/GsonUtil$GsonHolder;->INSTANCE:Lcom/google/gson/Gson;

    return-object v0
.end method
