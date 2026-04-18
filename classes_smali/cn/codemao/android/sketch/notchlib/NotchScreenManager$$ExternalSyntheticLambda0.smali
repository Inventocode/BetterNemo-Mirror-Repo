.class public final synthetic Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;

.field public final synthetic f$1:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;

    iput-object p2, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;->f$1:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;->f$1:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;

    invoke-static {v0, v1, p1}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->$r8$lambda$ii9VhZZuPuQw0J5peC7SQTi80Bs(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;Ljava/util/List;)V

    return-void
.end method
