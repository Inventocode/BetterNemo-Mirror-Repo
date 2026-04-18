.class Lcn/codemao/android/account/util/UniqueId$Source$1;
.super Ljava/lang/Object;
.source "UniqueId.java"

# interfaces
.implements Lio/reactivex/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/util/UniqueId$Source;->disk()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/UniqueId$Source;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/util/UniqueId$Source;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcn/codemao/android/account/util/UniqueId$Source$1;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source$1;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->access$400(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v0, "内部存储没有uniqueId"

    .line 140
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source$1;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId$Source;->access$600(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "外部存储有uniqueId，备份到内部存储"

    .line 143
    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcn/codemao/android/account/util/UniqueId$Source$1;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-static {v1, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->access$700(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V

    goto :goto_55

    :cond_2a
    const-string/jumbo v1, "外部存储也没有uniqueId，尝试生成"

    .line 146
    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    goto :goto_55

    :cond_31
    const-string/jumbo v1, "内部存储有uniqueId"

    .line 149
    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcn/codemao/android/account/util/UniqueId$Source$1;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId$Source;->access$600(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string/jumbo v1, "外部存储没有uniqueId，备份到外部存储"

    .line 152
    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcn/codemao/android/account/util/UniqueId$Source$1;->this$0:Lcn/codemao/android/account/util/UniqueId$Source;

    invoke-static {v1, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->access$800(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V

    goto :goto_55

    :cond_4f
    const-string/jumbo v1, "外部存储也有uniqueId，无需备份"

    .line 155
    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 158
    :goto_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 159
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_62

    .line 161
    :cond_5f
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    :goto_62
    return-void
.end method
