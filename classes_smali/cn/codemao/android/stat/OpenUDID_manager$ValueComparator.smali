.class Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/OpenUDID_manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/stat/OpenUDID_manager;


# direct methods
.method private constructor <init>(Lcn/codemao/android/stat/OpenUDID_manager;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;->this$0:Lcn/codemao/android/stat/OpenUDID_manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/stat/OpenUDID_manager;Lcn/codemao/android/stat/OpenUDID_manager$1;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1}, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;-><init>(Lcn/codemao/android/stat/OpenUDID_manager;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 203
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;->this$0:Lcn/codemao/android/stat/OpenUDID_manager;

    invoke-static {v0}, Lcn/codemao/android/stat/OpenUDID_manager;->access$100(Lcn/codemao/android/stat/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;->this$0:Lcn/codemao/android/stat/OpenUDID_manager;

    invoke-static {v1}, Lcn/codemao/android/stat/OpenUDID_manager;->access$100(Lcn/codemao/android/stat/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_24

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_24
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;->this$0:Lcn/codemao/android/stat/OpenUDID_manager;

    invoke-static {v0}, Lcn/codemao/android/stat/OpenUDID_manager;->access$100(Lcn/codemao/android/stat/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;->this$0:Lcn/codemao/android/stat/OpenUDID_manager;

    invoke-static {v0}, Lcn/codemao/android/stat/OpenUDID_manager;->access$100(Lcn/codemao/android/stat/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3c

    const/4 p1, 0x0

    return p1

    :cond_3c
    const/4 p1, -0x1

    return p1
.end method
