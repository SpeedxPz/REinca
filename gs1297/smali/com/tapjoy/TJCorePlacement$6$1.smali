.class final Lcom/tapjoy/TJCorePlacement$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCorePlacement$6;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement$6;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement$6;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$6$1;->a:Lcom/tapjoy/TJCorePlacement$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6$1;->a:Lcom/tapjoy/TJCorePlacement$6;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6$1;->a:Lcom/tapjoy/TJCorePlacement$6;

    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6$1;->a:Lcom/tapjoy/TJCorePlacement$6;

    iget-object v2, v2, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6$1;->a:Lcom/tapjoy/TJCorePlacement$6;

    iget-object v3, v3, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v3}, Lcom/tapjoy/TJCorePlacement;->h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJAdUnit;->preload(Lcom/tapjoy/TJPlacementData;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Z)Z

    .line 410
    return-void
.end method
