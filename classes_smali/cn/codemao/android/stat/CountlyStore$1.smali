.class Lcn/codemao/android/stat/CountlyStore$1;
.super Ljava/lang/Object;
.source "CountlyStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/CountlyStore;->eventsList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/codemao/android/stat/pojo/EventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/stat/CountlyStore;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/CountlyStore;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcn/codemao/android/stat/CountlyStore$1;->this$0:Lcn/codemao/android/stat/CountlyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/codemao/android/stat/pojo/EventInfo;Lcn/codemao/android/stat/pojo/EventInfo;)I
    .registers 3

    .line 117
    iget p1, p1, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    iget p2, p2, Lcn/codemao/android/stat/pojo/EventInfo;->t:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 114
    check-cast p1, Lcn/codemao/android/stat/pojo/EventInfo;

    check-cast p2, Lcn/codemao/android/stat/pojo/EventInfo;

    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/stat/CountlyStore$1;->compare(Lcn/codemao/android/stat/pojo/EventInfo;Lcn/codemao/android/stat/pojo/EventInfo;)I

    move-result p1

    return p1
.end method
