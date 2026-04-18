.class Lorg/conscrypt/AbstractSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/conscrypt/ByteArray;",
        "Lorg/conscrypt/NativeSslSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/AbstractSessionContext;


# direct methods
.method constructor <init>(Lorg/conscrypt/AbstractSessionContext;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/conscrypt/ByteArray;",
            "Lorg/conscrypt/NativeSslSession;",
            ">;)Z"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-static {v0}, Lorg/conscrypt/AbstractSessionContext;->access$000(Lorg/conscrypt/AbstractSessionContext;)I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-static {v1}, Lorg/conscrypt/AbstractSessionContext;->access$000(Lorg/conscrypt/AbstractSessionContext;)I

    move-result v1

    if-le v0, v1, :cond_21

    .line 54
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext$1;->this$0:Lorg/conscrypt/AbstractSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method
