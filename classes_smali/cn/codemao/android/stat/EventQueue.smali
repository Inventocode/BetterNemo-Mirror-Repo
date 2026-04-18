.class public Lcn/codemao/android/stat/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# instance fields
.field private final countlyStore_:Lcn/codemao/android/stat/CountlyStore;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/CountlyStore;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    return-void
.end method


# virtual methods
.method events()Ljava/lang/String;
    .registers 4

    .line 69
    iget-object v0, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0}, Lcn/codemao/android/stat/CountlyStore;->eventsList()Ljava/util/List;

    move-result-object v0

    .line 70
    new-instance v1, Lcn/codemao/android/stat/pojo/ReportInfo;

    const-string v2, "0"

    invoke-direct {v1, v2}, Lcn/codemao/android/stat/pojo/ReportInfo;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v2, v1, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    iput-object v0, v2, Lcn/codemao/android/stat/pojo/DataBody;->b:Ljava/util/List;

    .line 80
    iget-object v2, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v2, v0}, Lcn/codemao/android/stat/CountlyStore;->removeEvents(Ljava/util/List;)V

    .line 81
    invoke-virtual {v1}, Lcn/codemao/android/stat/pojo/ReportInfo;->toJSON()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCountlyStore()Lcn/codemao/android/stat/CountlyStore;
    .registers 2

    .line 112
    iget-object v0, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    return-object v0
.end method

.method recordEvent(Lcn/codemao/android/stat/pojo/EventInfo;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0, p1}, Lcn/codemao/android/stat/CountlyStore;->addEvent(Lcn/codemao/android/stat/pojo/EventInfo;)V

    return-void
.end method

.method recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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

    .line 93
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v1, p1, p2, v0}, Lcn/codemao/android/stat/CountlyStore;->addEvent(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method size()I
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v1}, Lcn/codemao/android/stat/CountlyStore;->events()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeMaoStat    length"

    invoke-static {v1, v0}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/codemao/android/stat/EventQueue;->countlyStore_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0}, Lcn/codemao/android/stat/CountlyStore;->events()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
