.class Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;
.super Ljava/lang/Object;
.source "PersistentFirstStart.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Boolean;
    .registers 2

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;->create()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 27
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;->load(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public save(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_b

    .line 32
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;->create()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_b
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public bridge synthetic save(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;->save(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
