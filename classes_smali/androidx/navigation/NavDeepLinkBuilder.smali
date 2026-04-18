.class public final Landroidx/navigation/NavDeepLinkBuilder;
.super Ljava/lang/Object;
.source "NavDeepLinkBuilder.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDestId:I

.field private mGraph:Landroidx/navigation/NavGraph;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mContext:Landroid/content/Context;

    .line 73
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    goto :goto_2b

    .line 76
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_24

    goto :goto_29

    .line 78
    :cond_24
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_29
    iput-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    .line 80
    :goto_2b
    iget-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroidx/navigation/NavController;)V
    .registers 3

    .line 87
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mGraph:Landroidx/navigation/NavGraph;

    return-void
.end method

.method private fillInIntent()V
    .registers 6

    .line 166
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 167
    iget-object v1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 168
    :cond_b
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    if-nez v1, :cond_3d

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    .line 170
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    iget v4, p0, Landroidx/navigation/NavDeepLinkBuilder;->mDestId:I

    if-ne v3, v4, :cond_23

    move-object v1, v2

    goto :goto_b

    .line 172
    :cond_23
    instance-of v3, v2, Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_b

    .line 173
    check-cast v2, Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3d
    if-eqz v1, :cond_4b

    .line 183
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->buildDeepLinkIds()[I

    move-result-object v1

    const-string v2, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    return-void

    .line 179
    :cond_4b
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mDestId:I

    invoke-static {v0, v1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Navigation destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found in the navigation graph "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;
    .registers 6

    .line 213
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1e

    .line 214
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mGraph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_16

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before constructing the deep link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setDestination() before constructing the deep link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1e
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {v0, v1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    :goto_30
    invoke-virtual {v0}, Landroidx/core/app/TaskStackBuilder;->getIntentCount()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 230
    invoke-virtual {v0, v1}, Landroidx/core/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    const-string v4, "android-support-nav:controller:deepLinkIntent"

    .line 231
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_44
    return-object v0
.end method

.method public setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;
    .registers 4

    .line 194
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method public setDestination(I)Landroidx/navigation/NavDeepLinkBuilder;
    .registers 2

    .line 157
    iput p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mDestId:I

    .line 158
    iget-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz p1, :cond_9

    .line 159
    invoke-direct {p0}, Landroidx/navigation/NavDeepLinkBuilder;->fillInIntent()V

    :cond_9
    return-object p0
.end method
