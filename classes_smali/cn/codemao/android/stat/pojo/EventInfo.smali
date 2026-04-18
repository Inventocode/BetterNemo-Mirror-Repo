.class public Lcn/codemao/android/stat/pojo/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"


# static fields
.field public static final EVENT_ACCOUNT_INFO:Ljava/lang/String; = "login_count"

.field public static final EVENT_DURATION:Ljava/lang/String; = "duration"

.field public static final EVENT_SESSION:Ljava/lang/String; = "session"

.field public static final EVENT_VIEW:Ljava/lang/String; = "view"


# instance fields
.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public t:I

.field public x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->i:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->x:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->i:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    .line 55
    iput-object p1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->e:Ljava/lang/String;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->x:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestampMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->i:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    .line 63
    iput-object p1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->e:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->x:Ljava/util/Map;

    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcn/codemao/android/stat/pojo/EventInfo;
    .registers 3

    .line 75
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 76
    const-class v1, Lcn/codemao/android/stat/pojo/EventInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/stat/pojo/EventInfo;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 81
    instance-of v1, p1, Lcn/codemao/android/stat/pojo/EventInfo;

    if-nez v1, :cond_8

    goto :goto_25

    .line 84
    :cond_8
    check-cast p1, Lcn/codemao/android/stat/pojo/EventInfo;

    .line 85
    iget v1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    iget v2, p1, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->e:Ljava/lang/String;

    iget-object v2, p1, Lcn/codemao/android/stat/pojo/EventInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    iget-object p1, p1, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    :goto_25
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 90
    iget v0, p0, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    const/4 v1, 0x1

    if-lez v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    iget-object v2, p0, Lcn/codemao/android/stat/pojo/EventInfo;->d:Ljava/util/Map;

    if-eqz v2, :cond_10

    .line 91
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x1

    :goto_11
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcn/codemao/android/stat/pojo/EventInfo;->e:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1a
    xor-int/2addr v0, v1

    return v0
.end method

.method public toJSON()Ljava/lang/String;
    .registers 2

    .line 70
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 71
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcn/codemao/android/stat/pojo/EventInfo;->toJSON()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
